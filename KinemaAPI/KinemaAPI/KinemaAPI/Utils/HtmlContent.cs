namespace KinemaAPI.Utils
{
    public class HtmlContent
    {
        public static string GetTicketEmailHtml(string ticketId, string imgSrc)
        {
            return $"""
                    <div style="font-family: Arial, sans-serif; max-width: 600px; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 10px; background-color: #f9f9f9;">
                        <h1 style="color: #d32f2f; text-align: center;">🎬 Your Kinema Ticket</h1>
                        <p style="font-size: 16px; color: #333; text-align: center;">
                            Thank you for booking with <strong>Kinema</strong>! Here is your ticket:
                        </p>

                        <div style="text-align: center; margin: 20px 0;">
                            <h2 style="color: #444;">🎟 Ticket #{ticketId}</h2>
                            <p style="font-size: 14px; color: #666;">Show this barcode at the theater entrance:</p>
                            <img src="data:image/png;base64,{imgSrc}" 
                                 style="border: 1px solid #ddd; padding: 10px; border-radius: 5px; width: 150px; height: 150px" 
                                 alt="Ticket Barcode" />
                        </div>

                        <hr style="border: none; border-top: 1px solid #ddd; margin: 20px 0;" />

                        <p style="text-align: center; font-size: 14px; color: #666;">
                            📍 Visit our website for more details: 
                            <a href="https://www.kinema.com" style="color: #d32f2f; text-decoration: none;">Kinema.com</a>
                        </p>

                        <p style="text-align: center; font-size: 14px; color: #666;">
                            🎥 Enjoy your movie! – <strong>Kinema Team</strong>
                        </p>
                    </div>
                    """;
        }
    }
}
