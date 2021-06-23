Vue.component('chat-messages', {

    props: ['messages'],

    template: `

        <ul class="chat">
            <li class="left clearfix" v-for="message in messages">
                <div class="chat-body clearfix">
                    <div class="header">
                        <strong class="primary-font">
                            {{ message.user }}
                        </strong>
                    </div>
                    <p>
                        {{ message.message }}
                    </p>
                </div>
            </li>
        </ul>

    `,

});

Vue.component('chat-form', {

    props: ['user'],

    template: `

        <div class="input-group">
            <input id="btn-input" type="text" name="message" class="form-control input-sm" placeholder="Type your message here..." v-model="newMessage" @keyup.enter="sendMessage">

            <span class="input-group-btn">
                <button class="btn btn-primary btn-sm" id="btn-chat" @click="sendMessage">
                    Send
                </button>
            </span>
        </div>

    `,

    data() {
        return {
            newMessage: ''
        }
    },

    methods: {
        sendMessage() {
            this.$emit('messagesent', {
                user: this.user,
                message: this.newMessage
            });

            this.newMessage = ''
        }

    },

});

new Vue({

    el: '#root',

    data: {
        messages: [],
        user: ''
    },

    created() {

        this.fetchMessages();
        this.user = 'MB'

    },

    methods: {

        fetchMessages() {
            this.messages = [
                { user: 'JONA', message: 'Test11'},
                { user: 'JONA', message: 'Test11'},
                { user: 'JONA', message: 'Test11'},
            ]
        },

        addMessage(message) {

            this.messages.push(message);
        }

    }



})

