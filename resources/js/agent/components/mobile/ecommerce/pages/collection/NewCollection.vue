<template>
    <div class="padding-around">
        <div class="card">
            <div class="card-header">New Payment Collection form</div>
        </div>
        <div class="card-body">


            <div>
                <div class="padding-around card" v-if="sourceInfo">
                    <h5>Shop Info</h5>
                    Shop Name: {{ sourceInfo.name.en }} <br>
                    Owner Name: {{ sourceInfo.owner_name }} <br>
                    Contact: {{ sourceInfo.mobile }} <br>
                    <b>Collection Amount: &#2547; {{ sourceInfo.current_sale }}</b> <br>
                </div>
            </div>
            <div class="px-2 padding-top">
                <div class="form-group">
                    <label for="">Payment Type*</label>
                    <select v-model="type" @change="paymentTypeValue($event)" class="form-control">
                        <option value="cash">Cash</option>
                        <option value="bank">Bank</option>
                        <option value="mobile_bank">Mobile Banking</option>
                        <option value="cheque">Cheque</option>
                        <option value="online">Online</option>
                    </select>
                </div>


                <template v-if="paymentType == 'bank'">
                    <div class="form-group">
                        <template v-for="type in paymentTypeList">
                            <div>
                                <label for="bank"> <input type="radio" name="bank" v-model="payment_type_id" id="bank"
                                                          v-bind:value="type.id">({{type.account_number}})
                                    {{type.account_name}}</label> <br>
                            </div>
                        </template>
                    </div>
                </template>
                <template v-for="error in errors">
                    <span class="text-danger" >{{error}}</span>
                </template>
                <template v-if="paymentType == 'mobile_bank'">
                    <div class="form-group">
                        <template v-for="type in paymentTypeList">

                           <div>
                               <label for="mobile_banking"> <input type="radio" v-model="payment_type_id"
                                                                   name="mobile_banking" id="mobile_banking"
                                                                   v-bind:value="type.id">({{type.account_number}})
                                   {{type.account_name}}</label>
                           </div>
                        </template>


                    </div>
                </template>
                <template v-if="paymentType == 'online'">

                </template>


                <!--            <div id="bank" class="form-group" >-->
                <!--                <label for="">Bank Name</label>-->
                <!--                <input type="text" v-model="bank_name" class="form-control" />-->
                <!--            </div>-->
                <!--            <div class="form-group">-->
                <!--                <label for="">Account Number</label>-->
                <!--                <input type="text" v-model="account_number" class="form-control" />-->
                <!--            </div>-->
                <!--            <div class="form-group">-->
                <!--                <label for="">Cheque Number</label>-->
                <!--                <input type="text" v-model="cheque_number" class="form-control" />-->
                <!--            </div>-->
                <!--            <div class="form-group">-->
                <!--                <label for="">Note</label>-->
                <!--                <textarea v-model="note" class="form-control"></textarea>-->
                <!--            </div>-->
                <div class="form-group">
                    <label for="">Note</label>
                    <textarea v-model="note" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="">Amount*</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">&#2547;</span>
                        </div>
                        <input type="number" step="0.01" v-model.number="paid_amount" class="form-control"/>
                    </div>
                    <div>
                        <span class="alert alert-danger mt-2 py-1"
                              v-if="(sourceInfo && sourceInfo.current_sale) < paid_amount ">Amount is gretter than collection amount </span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Image </label>
                    <div class="custom-file-">
                        <input
                            type="file"
                            class="custom-file-input- form-control"
                            id="file_pasport"
                            accept=""
                            lang="en"
                            v-on:change="onFileChange"
                        />
                    </div>
                </div>
                <div class="padding-top text-center">
                    <p>*Please double check before submit because after submit you can't change the info</p>
                    <button class="btn btn-primary px-5 btn-sm"
                            :disabled="!type || !paid_amount || !sourceInfo || sourceInfo.current_sale < paid_amount"
                            @click="submit"><i class="fa fa-save"></i> Save Collection
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import eventBus from './../../../../../event-bus'

export default {
    props: ['agent', 'shopId'],
    data() {
        return {
            selectedUser: null,
            sourceList: [],
            selectedSource: null,
            newSource: false,
            type: null,
            bank_name: null,
            account_number: null,
            cheque_number: null,
            note: null,
            paid_amount: null,
            image: null,
            sourceInfo: null,
            paymentType: 'cash',
            paymentTypeList: null,
            payment_type_id: 0,
            errors: []
        }
    },
    mounted() {
    },
    created() {
        this.getSourceInfo()
    },
    methods: {
        getSourceInfo() {
            if (this.shopId) {
                axios.get(window.location.origin + `/api/agent/${this.agent}/ecommerce/shop/${this.shopId}/details`).then(res => {
                    if (res.status == 200) {
                        this.sourceInfo = res.data
                    } else {
                        this.$router.push({name: 'agent.ecom.source.list'});
                    }
                });
            } else {
                this.$router.push({name: 'agent.ecom.source.list'});
            }
        },
        onFileChange(e) {
            const file = e.target.files[0];
            this.image = file;
        },
        paymentTypeValue(event) {
            var paymentType = event.target.value;
            this.paymentType = event.target.value
            if (paymentType == "bank") {
                axios.get(window.location.origin + `/get/payment-type/bank`).then(res => {
                    if (res.status == 200) {
                        this.paymentTypeList = res.data
                    }
                });
            }
            if (paymentType == "mobile_bank") {
                axios.get(window.location.origin + `/get/payment-type/mobile_bank`).then(res => {
                    if (res.status == 200) {
                        this.paymentTypeList = res.data
                    }
                });
            }
        },
        submit() {
            let formData = new FormData();
            if (this.paymentType == 'bank' || this.paymentType == 'mobile_bank') {
                if(this.payment_type_id == 0){
                    this.errors = 'Must Select bank or mobile banking number';
                    return;
                }
            }
            formData.append('image', this.image)
            formData.append("source", this.sourceInfo.id);
            formData.append("type", this.type);
            formData.append("bank_name", this.bank_name);
            formData.append("account_number", this.account_number);
            formData.append("note", this.note);
            formData.append("paid_amount", this.paid_amount);
            formData.append("payment_type_id", this.payment_type_id);
            axios.post(
                window.location.origin + `/api/agent/${this.agent}/ecommerce/collection/save`,
                formData,
                {
                    headers: {
                        "Content-Type": `multipart/form-data; boundary=${formData._boundary}`
                    }
                }
            )
                .then(res => {
                    if (res.data.hasError) {
                        alert(res.data.errorMessage);
                    }
                    if (res.data.success || res.status == 200) {
                        this.$swal({
                            title: 'Success!',
                            text: 'Shop Collection is added.',
                            icon: 'success',
                            confirmButtonText: 'Ok',
                        });
                        this.$router.push({name: 'agent.ecom.collection.list'})
                    }
                })
                .catch(response => {
                    console.log(response);
                });
        }
    },
}
</script>

<style>

</style>
