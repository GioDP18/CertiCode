<div style="text-align: center;">
    <img src="{{ $message->embed(public_path() . '/external/Logo527-5lue.png') }}" alt="Your Logo">
    <div style="display: inline-block; background-color: #ffffff; padding: 20px; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);">
        <p>Thank you for registering for the seminar! You're now part of an exciting opportunity to gain valuable insights and knowledge.</p>
        
        <p>We're thrilled to have you join us. To access more information about the seminar, including schedule details and any additional resources, please click the button below:</p>
        
        <a href="{{ $seminar_link }}" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; text-align: center; text-decoration: none; border-radius: 5px; margin-top: 15px; transition: background-color 0.3s;">Access Seminar Details</a>
        
        <p>If you have any questions or require further assistance, feel free to reach out to our team. We're here to help!</p>
        
        <p>Looking forward to seeing you at the seminar!</p>
    </div>
</div>