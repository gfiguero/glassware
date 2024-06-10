import { Application } from "@hotwired/stimulus"


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

document.addEventListener('turbo:streams:updated', () => {
    console.log('recargado')
});

export { application }
