<template>
    <div class="padding-around">
        <div class="card">
            <div class="card-header">Al Order History of this Shop</div>
        </div>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Order #</th>
                    <th>Action</th>
                    <th>Ordered at</th>
                    <th>Items</th>
                    <th>Price</th>
                    <th>Status</th>

                </tr>
                </thead>
                <tbody>
                <template v-for="order in orderList">
                    <tr>
                        <td>{{ order.id }}</td>
                        <td>
                            <router-link
                                class="btn-link"
                                :to="{
          name: 'agent.ecom.order.details',
          params: { orderId: order.id },
        }"
                            >Details
                            </router-link
                            >
                            <a
                                class="btn-link text-danger"
                                v-if="order.order_status === 'pending'"
                                @click="deleteOrder(order.id)"
                            >Delete</a
                            >
                            <router-link
                                class="btn-link text-info"
                                v-if="order.order_status === 'pending'"
                                :to="{
          name: 'agent.ecom.order.details',
          params: { orderId: order.id },
        }"
                            >Edit
                            </router-link
                            >
                        </td>
                        <td>{{ order.created_at | date }}</td>
                        <td> {{ order.items.length }}</td>
                        <td>{{ order.total_price }}</td>
                        <td
                            :class="{
        'w3-green': order.order_status == 'shipped',
        'w3-blue': order.order_status == 'confirmed',
        'w3-purple': order.order_status == 'processing',
        'w3-orange': order.order_status == 'delivered',
      }">
                            {{ order.order_status }}
                        </td>
                    </tr>
                </template>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
import eventBus from './../../../../../event-bus'

export default {
    props: ['agent', 'shopId'],
    data() {
        return {
            orderList: [],

        }
    },
    mounted() {
    },
    created() {
        this.getOrders()
    },
    methods: {
        getOrders() {
            if (this.shopId) {
                axios.get(window.location.origin + `/api/agent/${this.agent}/ecommerce/shop/${this.shopId}/orders/type/all`).then(res => {
                    if (res.status == 200) {
                        this.orderList = res.data.data
                        console.log(res.data)
                    }
                });
            }
        },

    },
}
</script>

<style>

</style>
