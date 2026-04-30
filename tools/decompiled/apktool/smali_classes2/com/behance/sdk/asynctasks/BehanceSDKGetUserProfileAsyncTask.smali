.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetUserProfileAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private getUserProfileTaskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;

    .line 44
    return-void
.end method

.method private getCityDTO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string/jumbo v1, "clientId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "{server_root_url}/v2/locations/cities?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const-string/jumbo v1, "country_code"

    invoke-static {v0, v1, p2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    const-string/jumbo v1, "region"

    invoke-static {v0, v1, p3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    const-string/jumbo v1, "query"

    invoke-static {v0, v1, p1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_2
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get Cities URL - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get cities response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "results"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v1, v3

    .line 158
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 159
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    check-cast v0, Lorg/json/JSONObject;

    .line 162
    const-string/jumbo v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    new-instance v1, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;-><init>()V

    .line 164
    const-string/jumbo v4, "location_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setId(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, p1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setDisplayName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 175
    :goto_1
    return-object v0

    .line 158
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem getting Cities from server"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v0, v2

    .line 175
    goto :goto_1
.end method

.method private getCountryDTO(Ljava/lang/String;)Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;
    .locals 5

    .prologue
    .line 205
    new-instance v1, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;-><init>()V

    .line 206
    invoke-virtual {v1, p1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->setDisplayName(Ljava/lang/String;)V

    .line 209
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\"results\":[{\"short_name\":\"US\",\"long_name\":\"United States\"},{\"short_name\":\"AF\",\"long_name\":\"Afghanistan\"},{\"short_name\":\"AX\",\"long_name\":\"Aland Islands\"},{\"short_name\":\"AL\",\"long_name\":\"Albania\"},{\"short_name\":\"DZ\",\"long_name\":\"Algeria\"},{\"short_name\":\"AS\",\"long_name\":\"American Samoa\"},{\"short_name\":\"AD\",\"long_name\":\"Andorra\"},{\"short_name\":\"AO\",\"long_name\":\"Angola\"},{\"short_name\":\"AI\",\"long_name\":\"Anguilla\"},{\"short_name\":\"AQ\",\"long_name\":\"Antarctica\"},{\"short_name\":\"AG\",\"long_name\":\"Antigua and Barbuda\"},{\"short_name\":\"AR\",\"long_name\":\"Argentina\"},{\"short_name\":\"AM\",\"long_name\":\"Armenia\"},{\"short_name\":\"AW\",\"long_name\":\"Aruba\"},{\"short_name\":\"AU\",\"long_name\":\"Australia\"},{\"short_name\":\"AT\",\"long_name\":\"Austria\"},{\"short_name\":\"AZ\",\"long_name\":\"Azerbaijan\"},{\"short_name\":\"BS\",\"long_name\":\"Bahamas\"},{\"short_name\":\"BH\",\"long_name\":\"Bahrain\"},{\"short_name\":\"BD\",\"long_name\":\"Bangladesh\"},{\"short_name\":\"BB\",\"long_name\":\"Barbados\"},{\"short_name\":\"BY\",\"long_name\":\"Belarus\"},{\"short_name\":\"BE\",\"long_name\":\"Belgium\"},{\"short_name\":\"BZ\",\"long_name\":\"Belize\"},{\"short_name\":\"BJ\",\"long_name\":\"Benin\"},{\"short_name\":\"BM\",\"long_name\":\"Bermuda\"},{\"short_name\":\"BT\",\"long_name\":\"Bhutan\"},{\"short_name\":\"BO\",\"long_name\":\"Bolivia\"},{\"short_name\":\"BQ\",\"long_name\":\"Bonaire, Saint Eustatius and Saba\"},{\"short_name\":\"BA\",\"long_name\":\"Bosnia and Herzegovina\"},{\"short_name\":\"BW\",\"long_name\":\"Botswana\"},{\"short_name\":\"BR\",\"long_name\":\"Brazil\"},{\"short_name\":\"IO\",\"long_name\":\"British Indian Ocean Territory\"},{\"short_name\":\"BN\",\"long_name\":\"Brunei Darussalam\"},{\"short_name\":\"BG\",\"long_name\":\"Bulgaria\"},{\"short_name\":\"BF\",\"long_name\":\"Burkina Faso\"},{\"short_name\":\"BI\",\"long_name\":\"Burundi\"},{\"short_name\":\"KH\",\"long_name\":\"Cambodia\"},{\"short_name\":\"CM\",\"long_name\":\"Cameroon\"},{\"short_name\":\"CA\",\"long_name\":\"Canada\"},{\"short_name\":\"CV\",\"long_name\":\"Cape Verde\"},{\"short_name\":\"KY\",\"long_name\":\"Cayman Islands\"},{\"short_name\":\"CF\",\"long_name\":\"Central African Republic\"},{\"short_name\":\"TD\",\"long_name\":\"Chad\"},{\"short_name\":\"CL\",\"long_name\":\"Chile\"},{\"short_name\":\"CN\",\"long_name\":\"China\"},{\"short_name\":\"CX\",\"long_name\":\"Christmas Island\"},{\"short_name\":\"CC\",\"long_name\":\"Cocos (Keeling) Islands\"},{\"short_name\":\"CO\",\"long_name\":\"Colombia\"},{\"short_name\":\"KM\",\"long_name\":\"Comoros\"},{\"short_name\":\"CG\",\"long_name\":\"Congo\"},{\"short_name\":\"CD\",\"long_name\":\"Congo, The Democratic Republic of the\"},{\"short_name\":\"CK\",\"long_name\":\"Cook Islands\"},{\"short_name\":\"CR\",\"long_name\":\"Costa Rica\"},{\"short_name\":\"CI\",\"long_name\":\"Cote d\'Ivoire\"},{\"short_name\":\"HR\",\"long_name\":\"Croatia\"},{\"short_name\":\"CU\",\"long_name\":\"Cuba\"},{\"short_name\":\"CW\",\"long_name\":\"Curacao\"},{\"short_name\":\"CY\",\"long_name\":\"Cyprus\"},{\"short_name\":\"CZ\",\"long_name\":\"Czech Republic\"},{\"short_name\":\"DK\",\"long_name\":\"Denmark\"},{\"short_name\":\"DJ\",\"long_name\":\"Djibouti\"},{\"short_name\":\"DM\",\"long_name\":\"Dominica\"},{\"short_name\":\"DO\",\"long_name\":\"Dominican Republic\"},{\"short_name\":\"EC\",\"long_name\":\"Ecuador\"},{\"short_name\":\"EG\",\"long_name\":\"Egypt\"},{\"short_name\":\"SV\",\"long_name\":\"El Salvador\"},{\"short_name\":\"GQ\",\"long_name\":\"Equatorial Guinea\"},{\"short_name\":\"ER\",\"long_name\":\"Eritrea\"},{\"short_name\":\"EE\",\"long_name\":\"Estonia\"},{\"short_name\":\"ET\",\"long_name\":\"Ethiopia\"},{\"short_name\":\"FK\",\"long_name\":\"Falkland Islands (Malvinas)\"},{\"short_name\":\"FO\",\"long_name\":\"Faroe Islands\"},{\"short_name\":\"FJ\",\"long_name\":\"Fiji\"},{\"short_name\":\"FI\",\"long_name\":\"Finland\"},{\"short_name\":\"FR\",\"long_name\":\"France\"},{\"short_name\":\"GF\",\"long_name\":\"French Guiana\"},{\"short_name\":\"PF\",\"long_name\":\"French Polynesia\"},{\"short_name\":\"TF\",\"long_name\":\"French Southern Territories\"},{\"short_name\":\"GA\",\"long_name\":\"Gabon\"},{\"short_name\":\"GM\",\"long_name\":\"Gambia\"},{\"short_name\":\"GE\",\"long_name\":\"Georgia\"},{\"short_name\":\"DE\",\"long_name\":\"Germany\"},{\"short_name\":\"GH\",\"long_name\":\"Ghana\"},{\"short_name\":\"GI\",\"long_name\":\"Gibraltar\"},{\"short_name\":\"GR\",\"long_name\":\"Greece\"},{\"short_name\":\"GL\",\"long_name\":\"Greenland\"},{\"short_name\":\"GD\",\"long_name\":\"Grenada\"},{\"short_name\":\"GP\",\"long_name\":\"Guadeloupe\"},{\"short_name\":\"GU\",\"long_name\":\"Guam\"},{\"short_name\":\"GT\",\"long_name\":\"Guatemala\"},{\"short_name\":\"GG\",\"long_name\":\"Guernsey\"},{\"short_name\":\"GN\",\"long_name\":\"Guinea\"},{\"short_name\":\"GW\",\"long_name\":\"Guinea-Bissau\"},{\"short_name\":\"GY\",\"long_name\":\"Guyana\"},{\"short_name\":\"HT\",\"long_name\":\"Haiti\"},{\"short_name\":\"VA\",\"long_name\":\"Holy See (Vatican City State)\"},{\"short_name\":\"HN\",\"long_name\":\"Honduras\"},{\"short_name\":\"HK\",\"long_name\":\"Hong Kong\"},{\"short_name\":\"HU\",\"long_name\":\"Hungary\"},{\"short_name\":\"IS\",\"long_name\":\"Iceland\"},{\"short_name\":\"IN\",\"long_name\":\"India\"},{\"short_name\":\"ID\",\"long_name\":\"Indonesia\"},{\"short_name\":\"IR\",\"long_name\":\"Iran, Islamic Republic of\"},{\"short_name\":\"IQ\",\"long_name\":\"Iraq\"},{\"short_name\":\"IE\",\"long_name\":\"Ireland\"},{\"short_name\":\"IM\",\"long_name\":\"Isle of Man\"},{\"short_name\":\"IL\",\"long_name\":\"Israel\"},{\"short_name\":\"IT\",\"long_name\":\"Italy\"},{\"short_name\":\"JM\",\"long_name\":\"Jamaica\"},{\"short_name\":\"JP\",\"long_name\":\"Japan\"},{\"short_name\":\"JE\",\"long_name\":\"Jersey\"},{\"short_name\":\"JO\",\"long_name\":\"Jordan\"},{\"short_name\":\"KZ\",\"long_name\":\"Kazakhstan\"},{\"short_name\":\"KE\",\"long_name\":\"Kenya\"},{\"short_name\":\"KI\",\"long_name\":\"Kiribati\"},{\"short_name\":\"KP\",\"long_name\":\"Korea, Democratic People\'s Republic of\"},{\"short_name\":\"KR\",\"long_name\":\"Korea, Republic of\"},{\"short_name\":\"XK\",\"long_name\":\"Kosovo\"},{\"short_name\":\"KW\",\"long_name\":\"Kuwait\"},{\"short_name\":\"KG\",\"long_name\":\"Kyrgyzstan\"},{\"short_name\":\"LA\",\"long_name\":\"Lao People\'s Democratic Republic\"},{\"short_name\":\"LV\",\"long_name\":\"Latvia\"},{\"short_name\":\"LB\",\"long_name\":\"Lebanon\"},{\"short_name\":\"LS\",\"long_name\":\"Lesotho\"},{\"short_name\":\"LR\",\"long_name\":\"Liberia\"},{\"short_name\":\"LY\",\"long_name\":\"Libya\"},{\"short_name\":\"LI\",\"long_name\":\"Liechtenstein\"},{\"short_name\":\"LT\",\"long_name\":\"Lithuania\"},{\"short_name\":\"LU\",\"long_name\":\"Luxembourg\"},{\"short_name\":\"MO\",\"long_name\":\"Macao\"},{\"short_name\":\"MK\",\"long_name\":\"Macedonia\"},{\"short_name\":\"MG\",\"long_name\":\"Madagascar\"},{\"short_name\":\"MW\",\"long_name\":\"Malawi\"},{\"short_name\":\"MY\",\"long_name\":\"Malaysia\"},{\"short_name\":\"MV\",\"long_name\":\"Maldives\"},{\"short_name\":\"ML\",\"long_name\":\"Mali\"},{\"short_name\":\"MT\",\"long_name\":\"Malta\"},{\"short_name\":\"MH\",\"long_name\":\"Marshall Islands\"},{\"short_name\":\"MQ\",\"long_name\":\"Martinique\"},{\"short_name\":\"MR\",\"long_name\":\"Mauritania\"},{\"short_name\":\"MU\",\"long_name\":\"Mauritius\"},{\"short_name\":\"YT\",\"long_name\":\"Mayotte\"},{\"short_name\":\"MX\",\"long_name\":\"Mexico\"},{\"short_name\":\"FM\",\"long_name\":\"Micronesia, Federated States of\"},{\"short_name\":\"MD\",\"long_name\":\"Moldova, Republic of\"},{\"short_name\":\"MC\",\"long_name\":\"Monaco\"},{\"short_name\":\"MN\",\"long_name\":\"Mongolia\"},{\"short_name\":\"ME\",\"long_name\":\"Montenegro\"},{\"short_name\":\"MS\",\"long_name\":\"Montserrat\"},{\"short_name\":\"MA\",\"long_name\":\"Morocco\"},{\"short_name\":\"MZ\",\"long_name\":\"Mozambique\"},{\"short_name\":\"MM\",\"long_name\":\"Myanmar\"},{\"short_name\":\"NA\",\"long_name\":\"Namibia\"},{\"short_name\":\"NR\",\"long_name\":\"Nauru\"},{\"short_name\":\"NP\",\"long_name\":\"Nepal\"},{\"short_name\":\"NL\",\"long_name\":\"Netherlands\"},{\"short_name\":\"NC\",\"long_name\":\"New Caledonia\"},{\"short_name\":\"NZ\",\"long_name\":\"New Zealand\"},{\"short_name\":\"NI\",\"long_name\":\"Nicaragua\"},{\"short_name\":\"NE\",\"long_name\":\"Niger\"},{\"short_name\":\"NG\",\"long_name\":\"Nigeria\"},{\"short_name\":\"NU\",\"long_name\":\"Niue\"},{\"short_name\":\"NF\",\"long_name\":\"Norfolk Island\"},{\"short_name\":\"MP\",\"long_name\":\"Northern Mariana Islands\"},{\"short_name\":\"NO\",\"long_name\":\"Norway\"},{\"short_name\":\"OM\",\"long_name\":\"Oman\"},{\"short_name\":\"PK\",\"long_name\":\"Pakistan\"},{\"short_name\":\"PW\",\"long_name\":\"Palau\"},{\"short_name\":\"PS\",\"long_name\":\"Palestinian Territory\"},{\"short_name\":\"PA\",\"long_name\":\"Panama\"},{\"short_name\":\"PG\",\"long_name\":\"Papua New Guinea\"},{\"short_name\":\"PY\",\"long_name\":\"Paraguay\"},{\"short_name\":\"PE\",\"long_name\":\"Peru\"},{\"short_name\":\"PH\",\"long_name\":\"Philippines\"},{\"short_name\":\"PN\",\"long_name\":\"Pitcairn\"},{\"short_name\":\"PL\",\"long_name\":\"Poland\"},{\"short_name\":\"PT\",\"long_name\":\"Portugal\"},{\"short_name\":\"PR\",\"long_name\":\"Puerto Rico\"},{\"short_name\":\"QA\",\"long_name\":\"Qatar\"},{\"short_name\":\"RE\",\"long_name\":\"Reunion\"},{\"short_name\":\"RO\",\"long_name\":\"Romania\"},{\"short_name\":\"RU\",\"long_name\":\"Russian Federation\"},{\"short_name\":\"RW\",\"long_name\":\"Rwanda\"},{\"short_name\":\"BL\",\"long_name\":\"Saint Bartelemey\"},{\"short_name\":\"SH\",\"long_name\":\"Saint Helena\"},{\"short_name\":\"KN\",\"long_name\":\"Saint Kitts and Nevis\"},{\"short_name\":\"LC\",\"long_name\":\"Saint Lucia\"},{\"short_name\":\"MF\",\"long_name\":\"Saint Martin\"},{\"short_name\":\"PM\",\"long_name\":\"Saint Pierre and Miquelon\"},{\"short_name\":\"VC\",\"long_name\":\"Saint Vincent and the Grenadines\"},{\"short_name\":\"WS\",\"long_name\":\"Samoa\"},{\"short_name\":\"SM\",\"long_name\":\"San Marino\"},{\"short_name\":\"ST\",\"long_name\":\"Sao Tome and Principe\"},{\"short_name\":\"SA\",\"long_name\":\"Saudi Arabia\"},{\"short_name\":\"SN\",\"long_name\":\"Senegal\"},{\"short_name\":\"RS\",\"long_name\":\"Serbia\"},{\"short_name\":\"SC\",\"long_name\":\"Seychelles\"},{\"short_name\":\"SL\",\"long_name\":\"Sierra Leone\"},{\"short_name\":\"SG\",\"long_name\":\"Singapore\"},{\"short_name\":\"SX\",\"long_name\":\"Sint Maarten\"},{\"short_name\":\"SK\",\"long_name\":\"Slovakia\"},{\"short_name\":\"SI\",\"long_name\":\"Slovenia\"},{\"short_name\":\"SB\",\"long_name\":\"Solomon Islands\"},{\"short_name\":\"SO\",\"long_name\":\"Somalia\"},{\"short_name\":\"ZA\",\"long_name\":\"South Africa\"},{\"short_name\":\"GS\",\"long_name\":\"South Georgia and the South Sandwich Islands\"},{\"short_name\":\"SS\",\"long_name\":\"South Sudan\"},{\"short_name\":\"ES\",\"long_name\":\"Spain\"},{\"short_name\":\"LK\",\"long_name\":\"Sri Lanka\"},{\"short_name\":\"SD\",\"long_name\":\"Sudan\"},{\"short_name\":\"SR\",\"long_name\":\"Suriname\"},{\"short_name\":\"SJ\",\"long_name\":\"Svalbard and Jan Mayen\"},{\"short_name\":\"SZ\",\"long_name\":\"Swaziland\"},{\"short_name\":\"SE\",\"long_name\":\"Sweden\"},{\"short_name\":\"CH\",\"long_name\":\"Switzerland\"},{\"short_name\":\"SY\",\"long_name\":\"Syrian Arab Republic\"},{\"short_name\":\"TW\",\"long_name\":\"Taiwan\"},{\"short_name\":\"TJ\",\"long_name\":\"Tajikistan\"},{\"short_name\":\"TZ\",\"long_name\":\"Tanzania, United Republic of\"},{\"short_name\":\"TH\",\"long_name\":\"Thailand\"},{\"short_name\":\"TL\",\"long_name\":\"Timor-Leste\"},{\"short_name\":\"TG\",\"long_name\":\"Togo\"},{\"short_name\":\"TK\",\"long_name\":\"Tokelau\"},{\"short_name\":\"TO\",\"long_name\":\"Tonga\"},{\"short_name\":\"TT\",\"long_name\":\"Trinidad and Tobago\"},{\"short_name\":\"TN\",\"long_name\":\"Tunisia\"},{\"short_name\":\"TR\",\"long_name\":\"Turkey\"},{\"short_name\":\"TM\",\"long_name\":\"Turkmenistan\"},{\"short_name\":\"TC\",\"long_name\":\"Turks and Caicos Islands\"},{\"short_name\":\"TV\",\"long_name\":\"Tuvalu\"},{\"short_name\":\"UG\",\"long_name\":\"Uganda\"},{\"short_name\":\"UA\",\"long_name\":\"Ukraine\"},{\"short_name\":\"AE\",\"long_name\":\"United Arab Emirates\"},{\"short_name\":\"GB\",\"long_name\":\"United Kingdom\"},{\"short_name\":\"UM\",\"long_name\":\"United States Minor Outlying Islands\"},{\"short_name\":\"UY\",\"long_name\":\"Uruguay\"},{\"short_name\":\"UZ\",\"long_name\":\"Uzbekistan\"},{\"short_name\":\"VU\",\"long_name\":\"Vanuatu\"},{\"short_name\":\"VE\",\"long_name\":\"Venezuela\"},{\"short_name\":\"VN\",\"long_name\":\"Vietnam\"},{\"short_name\":\"VG\",\"long_name\":\"Virgin Islands, British\"},{\"short_name\":\"VI\",\"long_name\":\"Virgin Islands, U.S.\"},{\"short_name\":\"WF\",\"long_name\":\"Wallis and Futuna\"},{\"short_name\":\"EH\",\"long_name\":\"Western Sahara\"},{\"short_name\":\"YE\",\"long_name\":\"Yemen\"},{\"short_name\":\"ZM\",\"long_name\":\"Zambia\"},{\"short_name\":\"ZW\",\"long_name\":\"Zimbabwe\"}]}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "results"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 212
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 213
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    check-cast v0, Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v4, "long_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    const-string/jumbo v2, "short_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 226
    :goto_1
    return-object v0

    .line 212
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    invoke-interface {v1, v0}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;)V

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getProfileImage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    :try_start_0
    const-string/jumbo v0, "276"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v0, "276"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const-string/jumbo v0, "138"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string/jumbo v0, "138"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_1
    const-string/jumbo v0, "129"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const-string/jumbo v0, "129"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    const-string/jumbo v0, "115"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const-string/jumbo v0, "115"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_3
    const-string/jumbo v0, "78"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    const-string/jumbo v0, "78"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_4
    const-string/jumbo v0, "50"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    const-string/jumbo v0, "50"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_5
    const-string/jumbo v0, "32"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    const-string/jumbo v0, "32"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    invoke-interface {v1, v0}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;)V

    .line 249
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStateDTO(Ljava/lang/String;)Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
    .locals 5

    .prologue
    .line 180
    new-instance v1, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;-><init>()V

    .line 181
    invoke-virtual {v1, p1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->setDisplayName(Ljava/lang/String;)V

    .line 183
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\"results\":[{\"short_name\":\"AB\",\"long_name\":\"Alberta\"},{\"short_name\":\"BC\",\"long_name\":\"British Columbia\"},{\"short_name\":\"MB\",\"long_name\":\"Manitoba\"},{\"short_name\":\"NB\",\"long_name\":\"New Brunswick\"},{\"short_name\":\"NL\",\"long_name\":\"Newfoundland and Labrador\"},{\"short_name\":\"NT\",\"long_name\":\"Northwest Territories\"},{\"short_name\":\"NS\",\"long_name\":\"Nova Scotia\"},{\"short_name\":\"NU\",\"long_name\":\"Nunavut\"},{\"short_name\":\"ON\",\"long_name\":\"Ontario\"},{\"short_name\":\"PE\",\"long_name\":\"Prince Edward Island\"},{\"short_name\":\"QC\",\"long_name\":\"Quebec\"},{\"short_name\":\"SK\",\"long_name\":\"Saskatchewan\"},{\"short_name\":\"YT\",\"long_name\":\"Yukon Territory\"},{\"short_name\":\"AL\",\"long_name\":\"Alabama\"},{\"short_name\":\"AK\",\"long_name\":\"Alaska\"},{\"short_name\":\"AZ\",\"long_name\":\"Arizona\"},{\"short_name\":\"AR\",\"long_name\":\"Arkansas\"},{\"short_name\":\"CA\",\"long_name\":\"California\"},{\"short_name\":\"CO\",\"long_name\":\"Colorado\"},{\"short_name\":\"CT\",\"long_name\":\"Connecticut\"},{\"short_name\":\"DE\",\"long_name\":\"Delaware\"},{\"short_name\":\"DC\",\"long_name\":\"District of Columbia\"},{\"short_name\":\"FL\",\"long_name\":\"Florida\"},{\"short_name\":\"GA\",\"long_name\":\"Georgia\"},{\"short_name\":\"HI\",\"long_name\":\"Hawaii\"},{\"short_name\":\"ID\",\"long_name\":\"Idaho\"},{\"short_name\":\"IL\",\"long_name\":\"Illinois\"},{\"short_name\":\"IN\",\"long_name\":\"Indiana\"},{\"short_name\":\"IA\",\"long_name\":\"Iowa\"},{\"short_name\":\"KS\",\"long_name\":\"Kansas\"},{\"short_name\":\"KY\",\"long_name\":\"Kentucky\"},{\"short_name\":\"LA\",\"long_name\":\"Louisiana\"},{\"short_name\":\"ME\",\"long_name\":\"Maine\"},{\"short_name\":\"MD\",\"long_name\":\"Maryland\"},{\"short_name\":\"MA\",\"long_name\":\"Massachusetts\"},{\"short_name\":\"MI\",\"long_name\":\"Michigan\"},{\"short_name\":\"MN\",\"long_name\":\"Minnesota\"},{\"short_name\":\"MS\",\"long_name\":\"Mississippi\"},{\"short_name\":\"MO\",\"long_name\":\"Missouri\"},{\"short_name\":\"MT\",\"long_name\":\"Montana\"},{\"short_name\":\"NE\",\"long_name\":\"Nebraska\"},{\"short_name\":\"NV\",\"long_name\":\"Nevada\"},{\"short_name\":\"NH\",\"long_name\":\"New Hampshire\"},{\"short_name\":\"NJ\",\"long_name\":\"New Jersey\"},{\"short_name\":\"NM\",\"long_name\":\"New Mexico\"},{\"short_name\":\"NY\",\"long_name\":\"New York\"},{\"short_name\":\"NC\",\"long_name\":\"North Carolina\"},{\"short_name\":\"ND\",\"long_name\":\"North Dakota\"},{\"short_name\":\"OH\",\"long_name\":\"Ohio\"},{\"short_name\":\"OK\",\"long_name\":\"Oklahoma\"},{\"short_name\":\"OR\",\"long_name\":\"Oregon\"},{\"short_name\":\"PA\",\"long_name\":\"Pennsylvania\"},{\"short_name\":\"RI\",\"long_name\":\"Rhode Island\"},{\"short_name\":\"SC\",\"long_name\":\"South Carolina\"},{\"short_name\":\"SD\",\"long_name\":\"South Dakota\"},{\"short_name\":\"TN\",\"long_name\":\"Tennessee\"},{\"short_name\":\"TX\",\"long_name\":\"Texas\"},{\"short_name\":\"UT\",\"long_name\":\"Utah\"},{\"short_name\":\"VT\",\"long_name\":\"Vermont\"},{\"short_name\":\"VA\",\"long_name\":\"Virginia\"},{\"short_name\":\"WA\",\"long_name\":\"Washington\"},{\"short_name\":\"WV\",\"long_name\":\"West Virginia\"},{\"short_name\":\"WI\",\"long_name\":\"Wisconsin\"},{\"short_name\":\"WY\",\"long_name\":\"Wyoming\"}]}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "results"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 185
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 186
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    check-cast v0, Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v4, "long_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string/jumbo v2, "short_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 201
    :goto_1
    return-object v0

    .line 185
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 201
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 48
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;-><init>()V

    .line 49
    array-length v0, p1

    if-eq v0, v8, :cond_0

    .line 50
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setExceptionOccurred(Z)V

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 54
    :cond_0
    aget-object v0, p1, v9

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getUserProfileTaskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getUserProfileTaskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getUserProfileTaskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string/jumbo v4, "clientId"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "user_id"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "{server_root_url}/v2/users/{user_id}?{key_client_id_param}={clientId}"

    invoke-static {v0, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get user details URL: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v4

    invoke-virtual {v3}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get user details response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v4, "http_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 73
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    .line 74
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "user"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    new-instance v3, Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-direct {v3}, Lcom/behance/sdk/BehanceSDKUserProfile;-><init>()V

    .line 78
    const-string/jumbo v4, "first_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setFirstName(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v4, "last_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setLastName(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v4, "company"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setCompany(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v4, "occupation"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setOccupation(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v4, "website"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setWebsite(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v4, "country"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getCountryDTO(Ljava/lang/String;)Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setCountry(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V

    .line 86
    if-eqz v4, :cond_2

    .line 88
    sget-object v5, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->COUNTRY_CODES_FOR_LOAD_STATES:Ljava/util/List;

    invoke-virtual {v4}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    const-string/jumbo v4, "state"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getStateDTO(Ljava/lang/String;)Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V

    .line 93
    :cond_1
    new-instance v4, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-direct {v4}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;-><init>()V

    .line 94
    const-string/jumbo v5, "city"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setDisplayName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setCity(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V

    .line 98
    :cond_2
    const-string/jumbo v4, "images"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getProfileImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->setProfileImageUrl(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setBehanceUserProfile(Lcom/behance/sdk/BehanceSDKUserProfile;)V

    :goto_1
    move-object v0, v1

    .line 126
    goto/16 :goto_0

    .line 101
    :cond_3
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unexpected HTTP Response code when trying to fetch User details. [User ID - %s] [Response code - %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 101
    invoke-interface {v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v0, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid server response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setException(Ljava/lang/Exception;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setExceptionOccurred(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unknown problem fetching User details [User ID - %s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-interface {v3, v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setExceptionOccurred(Z)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 106
    :cond_4
    const/16 v0, 0x194

    if-ne v3, v0, :cond_5

    .line 107
    :try_start_1
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "HTTP Response code 404 when trying to fetch User details. [User ID - %s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v3, "User not found"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setException(Ljava/lang/Exception;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setExceptionOccurred(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v0

    .line 122
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unknown problem fetching User details [User ID - %s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-interface {v3, v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setException(Ljava/lang/Exception;)V

    .line 124
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setExceptionOccurred(Z)V

    goto/16 :goto_1

    .line 111
    :cond_5
    :try_start_2
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unexpected HTTP Response code when trying to fetch User details. [User ID - %s] [Response code - %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 111
    invoke-interface {v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v0, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid server response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setException(Ljava/lang/Exception;)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->setExceptionOccurred(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getUserProfileTaskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;->onGetUserProfileFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->getUserProfileTaskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-interface {v0, p1, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;->onGetUserProfileSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;)V

    return-void
.end method
