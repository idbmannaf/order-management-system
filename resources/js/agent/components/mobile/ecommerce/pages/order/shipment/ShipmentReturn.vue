<template>
  <div class="padding-around">
    <div class="card">
      <div class="card-header h4 w3-deep-orange">
        Order Shipment # {{ shipmentId }}
      </div>
      <div class="card-body" v-if="order">
        <div class="h6">Order Placed at: {{ order.created_at | date }}</div>
        <div class="h6">Delivered at: {{ shipment.delivered_at | date }}</div>
        <div class="h6">Amount: &#2547;{{ shipment.total_price }}</div>
        <div class="h6">Total Items: {{ shipment.items.length }}</div>
        <div class="h6">
          <b>Order For:</b> <br />
          Mobile: {{ shipment.mobile }} <br />
          Source:
          {{ order.order_for_source ? order.order_for_source.name.en : "" }}
          <br />
        </div>
        <div class="h6">
          Status :
          <span class="badge badge-primary">{{ order.order_status }}</span>
        </div>
      </div>
    </div>
    <div class="card" v-if="shipment">
      <div class="card-header h5">Shipment Items</div>
      <div class="card-body px-1">
        <div class="table-responsive">
          <table class="table table-sm table-bordered table-striped">
            <thead>
              <th>Product Id</th>
              <th>Product Name</th>
              <th>Ordered Quantity</th>
              <th>Shipment Quantity</th>
              <th>Return Quantity</th>
              <th>Return Type</th>
              <th>Return Reason</th>
            </thead>

            <tbody>
              <template v-for="(item, index) in shipment.items">
                <ReturnDetailsItem
                  :item="item"
                  :key="index"
                  @validation="isValidated($event)"
                  @reasons="reasonsUpdate($event)"
                >
                </ReturnDetailsItem>
              </template>

              <!-- <tr v-for="(item, index) in shipment.items" :key="index">
                              <td>{{ item.product_id }} </td>
                              <td>{{ item.product_name }}</td>
                              <td>{{ item.total_quantity }}</td>
                              <td>{{ item.shipment_quantity }}</td>
                              <td>
                                  <div class="form-group">
                                      <input type="number" v-bind:class="{'border border-danger':isDanger, 'form-control':true}" @change="danger($event)" step="1"   v-model="returns.quantities[item.id]" >
                                  </div>
                              </td>
                              <td>
                                  <div class="form-group">
                                      <select class="form-control" v-model="returns.types[item.id]">
                                          <option value="replace" >Product Replacement</option>
                                          <option value="refund">Refund Payment</option>
                                      </select>
                                  </div>
                              </td>
                              <td>
                                  <div class="form-group">
                                      <textarea rows="3"  v-model="returns.reasons[item.id]" class="form-control"></textarea>
                                  </div>
                              </td>
                          </tr> -->
            </tbody>
          </table>
        </div>
        <div class="text-center">
          <button class="btn btn-success btn-sm" @click="placeReturn()">
            <i class="fa fa-save"></i> Place Return
          </button>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { string } from "../../../../../../../../../public/cp/plugins/jszip/jszip";
import ReturnDetailsItem from "../../return/ReturnDetailsItem";
export default {
  props: ["agent", "orderId", "shipmentId"],
  data() {
    return {
      order: null,
      shipment: null,
      reason: null,
      type: null,
      isDanger: false,
      returns: {
        validation: {},
        quantities: {},
        reasons: {},
        types: {},
      },
    };
  },
  computed: {
    validated: function () {
        if(!this.returns.validation.length){
            return false;
            }
      for (var valid in this.returns.validation) {
         if (!this.returns.validation[valid]) return false;
      }
      return true;
    },
  },
  created() {
    this.getShipmentDetails();
  },
  methods: {
    getShipmentDetails() {
      axios
        .get(
          window.location.origin +
            `/api/agent/${this.agent}/ecommerce/order/${this.orderId}/shipment/${this.shipmentId}`
        )
        .then((res) => {
          if (res.status == 200) {
            this.order = res.data.order;
            this.shipment = res.data.shipment;
          } else {
            console.log(res.data);
          }
        });
    },

    placeReturn() {
        if(!Object.keys(this.returns.validation).length){
        return false;

        }
      for (var valid in this.returns.validation) {
         if (!this.returns.validation[valid]) return false;
      }
      console.log(this.returns.quantities);
      console.log("============");
      console.log(this.returns.reasons);
            console.log("============");
      console.log(this.returns.types);

      axios
        .post(
          window.location.origin +
            `/api/agent/${this.agent}/ecommerce/order/${this.orderId}/shipment/${this.shipmentId}/return`,
          {
            quantities: this.returns.quantities,
            reasons: this.returns.reasons,
            types: this.returns.types,
          }
        )
        .then((res) => {
          if (res.status == 200) {
            this.$swal({
              title: "Success!",
              text: "Return request is placed successfully!",
              icon: "success",
              confirmButtonText: "Ok",
            });
            this.$router.push({
              name: "agent.ecom.order.details",
              params: { orderId: this.orderId },
            });
          } else {
            console.log(res.data.msg);
            this.$swal({
              title: "Error!",
              text: res.data.msg,
              icon: "warning",
            });
          }
        });
    },
    isValidated(event) {
      var id = event.id.toString();

      this.returns.validation[id] = event.validation;
      if (event.quantity != null || event.quantity) {
        this.returns.quantities[id] = event.quantity;
      }
      if (event.types !== null) {
        this.returns.types[id] = event.type;
      }
    //   if (event.reasons !== null) {
    //     this.returns.reasons[id] = event.reasons;
    //   }
    },
    reasonsUpdate(event){
        var id = event.id.toString();
        this.returns.reasons[id] = event.value;
    }

  },

  components: {
    ReturnDetailsItem,
  },
};
</script>
