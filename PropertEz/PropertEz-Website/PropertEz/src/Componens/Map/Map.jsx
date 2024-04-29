import React from "react";

const GoogleMap = () => {
  return (
    <div>
      <iframe
        title="google map"
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3497.8933715933163!2d77.49584577536305!3d28.75260037559938!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cf47204fb9241%3A0xd11ed4123c7691fe!2sKIET%20GROUP%20OF%20INSTITUTIONS%2C%20Muradnagar%2C%20Uttar%20Pradesh%20201206!5e0!3m2!1sen!2sin!4v1714245138461!5m2!1sen!2sin"
        width="400"
        height="600"
        style={{ border: 0, borderRadius: '20px' }}
        allowfullscreen=""
        loading="lazy"
        referrerPolicy="no-referrer-when-downgrade"
      ></iframe>
    </div>
  );
};

export default GoogleMap;