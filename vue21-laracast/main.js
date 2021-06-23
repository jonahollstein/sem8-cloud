Vue.component('task', {

    template: '<div><task v-for="task in tasks"> {{ task.task }} </task></div>' ,


    data() {
        return {
            tasks: [ 
                { task:'ggggg', completed: true},
                { description:'brrrr', completed: true}, 
                { description:'gasddd', completed: true}, 
                { description:'ggggddsas', completed: false}, 
            
            ]
        }
    },



});

Vue.component('task-list', {

    template: '<li><slot></slot></li>'

});

new Vue({

    el: '#root',
    
})

// app = new Vue({
//     el: '#root',

//     methods: {
//         addItem() {
            
//             this.messages.push(this.message);
//             this.newName = '';
//         },

//         toggleClass() {
//             this.isLoading = true;
//         },
//     },

//     computed: {
//         reversedMessage() {
//             return this.message.split('').reverse().join('');
//         },

//         incompleteTasks() {
//             return this.tasks.filter(task => ! task.completed);
//         },

//         completedTasks() {
//             return this.tasks.filter(task => task.completed);
//         },
//     },

// });