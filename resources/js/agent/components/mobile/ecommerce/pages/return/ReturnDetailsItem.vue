<template>
  <tr>
    <td>{{ item.product_id }}</td>
    <td>{{ item.product_name }}</td>
    <td>{{ item.total_quantity }}</td>
    <td>{{ item.shipment_quantity }}</td>
    <td>
      <div class="form-group">
        <input
          type="number"
          v-bind:class="{
            'border border-danger': isQuantityDanger,
            'form-control': true,
          }"
          @change="quantityChange($event)"
          step="1"
          v-model="quantities"
        />
        <template v-if="quantityError">
          <span class="text-danger">
            {{ quantityError }}
          </span>
        </template>
      </div>
    </td>
    <td>
      <div class="form-group">
        <select
          @change="typeChange($event)"
          v-bind:class="{
            'border border-danger': isTypeDanger,
            'form-control': true,
          }"
          v-model="types"
        >
          <option value="replace">Product Replacement</option>
          <option value="refund">Refund Payment</option>
        </select>
        <template v-if="typeError">
          <span class="text-danger">
            {{ typeError }}
          </span>
        </template>
      </div>
    </td>
    <td>
      <div class="form-group">
        <textarea rows="3"  @change="reasonChange($event)"  class="form-control"></textarea>
      </div>
    </td>
  </tr>
</template>
<script>
export default {
  props: ["item"],
  data() {
    return {
      isQuantityDanger: null,
      typeError: null,
      quantityError: null,
      reason: null,
      isTypeDanger: null,
      type: null,
      quantities: 0,
      reasons: "",
      types: "",
    };
  },
  methods: {
    quantityChange(event) {
      if (event.target.value <= 0 || event.target.value == null) {
        this.isQuantityDanger = true;

        this.quantityError = "Quantity required .min 1";
        this.$emit("validation", { validation: false, id: this.item.id });
      } else {
        this.isQuantityDanger = false;

        if (this.isTypeDanger === null || this.isTypeDanger === true) {
          this.isTypeDanger = true;

          this.typeError = "Type required.";
          this.$emit("validation", {
            validation: false,
            id: this.item.id,
            quantity: event.target.value,
          });
          return;
        }

        this.quantityError = "";
        this.typeError = " ";

        this.$emit("validation", {
          validation: true,
          id: this.item.id,
          quantity: event.target.value
        });
      }
    },

    typeChange(event) {
      if (event.target.value === null) {
        this.isTypeDanger = true;

        this.typeError = "Type required.";
        this.$emit("validation", { validation: false, id: this.item.id });
      } else {
        this.isTypeDanger = false;

        if (this.isQuantityDanger === null || this.isQuantityDanger === true) {
          this.isQuantityDanger = true;

          this.quantityError = "Quantity required .min 1";
          this.$emit("validation", {
            validation: false,
            id: this.item.id,
            type: event.target.value
          });
          return;
        }

        this.quantityError = "";
        this.typeError = " ";

        this.$emit("validation", {
          validation: true,
          id: this.item.id,
          type: event.target.value
        });
      }
    },
    reasonChange(event){
       this.$emit("reasons", {
          value: event.target.value,
          id: this.item.id
        });
    }
  },
};
</script>
