<template>
    <div>
        <section class="padding-around">
            <article class="text-center mt-4">
            <svg width="116px" height="116px" viewBox="0 0 116 116" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g transform="translate(-122.000000, -113.000000)">
                        <g id="check" transform="translate(122.000000, 113.000000)">
                            <circle  fill="#CEFFCF" cx="58" cy="58" r="58"></circle>
                            <circle  fill="#00D803" cx="58" cy="58" r="44"></circle>
                            <g transform="translate(45.000000, 47.000000)" fill="#FFFFFF">
                                <path d="M8.625,17.325 L2.9375,11.6375 C2.30375,11.00375 1.29625,11.00375 0.6625,11.6375 C0.02875,12.27125 0.02875,13.27875 0.6625,13.9125 L7.47125,20.72125 C8.105,21.355 9.12875,21.355 9.7625,20.72125 L26.9875,3.5125 C27.62125,2.87875 27.62125,1.87125 26.9875,1.2375 C26.35375,0.60375 25.34625,0.60375 24.7125,1.2375 L8.625,17.325 Z"></path>
                            </g>
                        </g>
                    </g>
                </g>
            </svg>
            <br><br>
                <h6>Your Seller shop is creaded!</h6>
            </article>

            <article class="box bg-light my-4">
                    <b>Seller Shop ID:</b> 1321 <br>  
                    <b>Name:</b> My shop <br>
                    <b>Category:</b> category
            </article>
            <br>
            <router-link class="btn btn-block btn-primary" :to="{name: 'ecommerce.profile'}">Done</router-link>
        </section>
    </div>
</template>