
require_once __DIR__ . '/vendor/autoload.php';

// get your REST API keys from MXT https://mxt.smsglobal.com/integrations
\SMSGlobal\Credentials::set('YOUR_API_KEY', 'YOUR_SECRET_KEY');

$otp = new \SMSGlobal\Resource\Otp();

try {
    $response = $otp->send('DESTINATION_NUMBER', '{*code*} is your SMSGlobal verification code.');
    print_r($response);
} catch (\Exception $e) {
    echo $e->getMessage();
}
