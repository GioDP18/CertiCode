<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class SeminarRegistration extends Mailable
{
    use Queueable, SerializesModels;

    
    public $data;
    public $seminar_link;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data, $seminar_link)
    {
        $this->data = $data;
        $this->seminar_link = $seminar_link;
        $this->to($data['email']);
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('email.body')
                    ->subject("Congratulations! You are Registered to a seminar.");
                    
    }
}
