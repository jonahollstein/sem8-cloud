Vue.component('task-list', {
    template: '<div><task v-for="task in tasks"> {{ task.task }} </task></div>' ,

    data() {
        return {
            tasks: [ 
                { task:'ggggg', completed: true},
                { task:'brrrr', completed: true}, 
                { task:'gasddd', completed: true}, 
                { task:'ggggddsas', completed: false}, 
            
            ]
        }
    },
   
});


Vue.component('task', {

    template: `
    <li>
        <slot></slot>
        
    </li>
    `

});

Vue.component('message', {

    props: ['title', 'body'],

    template: `

        <article class="message">
            <div class="message-header">
                <p>{{ title }}</p>
                <button class="delete" aria-label="delete"></button>
            </div>
            <div class="message-body">
                {{ body }}
            </div>
        </article>

    `

});


var app = new Vue({

    el: "#root",

    data: {
        message: "Hello World"
    },

    methods: {
        

    }

});