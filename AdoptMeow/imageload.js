window.onload = load;

function load(){
    const gallery = document.getElementById('image-gallery');

    // Example image URLs and captions
    const images = [
        { url: 'cats/cat1.jpg', caption: "Mitsy\n1 year\nContact: 050-000-0001" },
        { url: 'cats/cat2.jpg', caption: "Effy\n3 years\nContact: 050-000-0002" },
        { url: 'cats/cat3.jpg', caption: "Dvash\n1 year\nContact: 050-000-0003" }, // Updated caption
        { url: 'cats/cat5.jpg', caption: "Cat\n5 years\nContact: 050-000-0004" },
        { url: 'cats/cat4.jpg', caption: "Dvash's legs\n1 year\nContact: 050-000-0005" },
        { url: 'cats/cat6.jpg', caption: "Spoon\n1 year\nContact: 050-000-0006" },

        // Add more images and captions as needed
    ];

    const repeatCount = 16; // Number of times each image should appear

    // Loop to repeat images
    for (let i = 0; i < repeatCount; i++) {
        images.forEach(image => {
            // Create a container for the image and caption
            const container = document.createElement('div');
            container.classList.add('image-container');

            // Create the image element
            const imgElement = document.createElement('img');
            imgElement.src = image.url;
            imgElement.classList.add('gallery');

            // Create the caption element
            const captionElement = document.createElement('p');
            captionElement.textContent = image.caption;
            captionElement.classList.add('caption');

            // Append the image and caption to the container
            container.appendChild(imgElement);
            container.appendChild(captionElement);

            // Append the container to the gallery
            gallery.appendChild(container);
        });
    }
}

