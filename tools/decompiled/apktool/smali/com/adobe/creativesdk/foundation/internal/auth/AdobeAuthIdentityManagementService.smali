.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;
.super Ljava/lang/Object;
.source "AdobeAuthIdentityManagementService.java"


# static fields
.field private static final AdobeAuthIMSAgeVerificationError:Ljava/lang/String; = "ride_AdobeID_acct_actreq"

.field private static final AdobeAuthIMSEmailVerificationError:Ljava/lang/String; = "ride_AdobeID_acct_evs"

.field private static final AdobeAuthIMSTermsOfUseError:Ljava/lang/String; = "ride_AdobeID_acct_terms"

.field private static final AdobeAuthKeychainEntitlements:Ljava/lang/String; = "Entitlements"

.field private static final DEFAULT_ACCESS_TOKEN_EXPIRY:I = 0x15180

.field private static final DEFAULT_DEVICE_TOKEN_EXPIRY:I = 0xf099c0

.field private static final DEFAULT_REFRESH_TOKEN_EXPIRY:I = 0x127500

.field private static final IMS_CREATIVE_SDK_SCOPES:[Ljava/lang/String;

.field private static final IMS_DEFAULT_REDIRECT_URI:Ljava/lang/String; = "signin%3A%2F%2Fcomplete"

.field private static final IMS_ERROR_INVALID_CLIENT_ID:Ljava/lang/String; = "Invalid Client Id"

.field private static final IMS_ERROR_INVALID_CLIENT_SECRET:Ljava/lang/String; = "Invalid Client Secret"

.field private static final IMS_ERROR_INVALID_DEVICE_ID:Ljava/lang/String; = "Invalid Device Id"

.field private static final IMS_ERROR_INVALID_SERVER_RESPONSE:Ljava/lang/String; = "Invalid Server Response"

.field private static final IMS_ERROR_RECOVERABLE_SDK_TYPE:Ljava/lang/String; = "recoverable_sdk"

.field public static final IMS_ERROR_RECOVERABLE_USER_TYPE:Ljava/lang/String; = "recoverable_user"

.field public static final IMS_KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final IMS_KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final IMS_KEY_ADOBE_ID:Ljava/lang/String; = "userId"

.field private static final IMS_KEY_ADOBE_ID_WITH_OPENID:Ljava/lang/String; = "sub"

.field private static final IMS_KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final IMS_KEY_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field private static final IMS_KEY_CODE:Ljava/lang/String; = "code"

.field private static final IMS_KEY_CONTINUATION_TOKEN:Ljava/lang/String; = "continuation_token"

.field private static final IMS_KEY_COUNTRY_CODE:Ljava/lang/String; = "countryCode"

.field private static final IMS_KEY_DC:Ljava/lang/String; = "dc"

.field private static final IMS_KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final IMS_KEY_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field private static final IMS_KEY_DEVICE_TOKEN:Ljava/lang/String; = "device_token"

.field private static final IMS_KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final IMS_KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final IMS_KEY_EMAIL_VERIFIED:Ljava/lang/String; = "emailVerified"

.field private static final IMS_KEY_ERROR:Ljava/lang/String; = "error"

.field private static final IMS_KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field private static final IMS_KEY_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field private static final IMS_KEY_EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field private static final IMS_KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final IMS_KEY_FALSE:Ljava/lang/String; = "false"

.field private static final IMS_KEY_FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final IMS_KEY_FORCE_MARKETING_PERMISSION:Ljava/lang/String; = "force_marketing_permission"

.field private static final IMS_KEY_GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field private static final IMS_KEY_IDP_FLOW:Ljava/lang/String; = "idp_flow"

.field public static final IMS_KEY_INGEST_IDP_FB:Ljava/lang/String; = "facebook"

.field public static final IMS_KEY_INGEST_IDP_GOOGLE:Ljava/lang/String; = "google"

.field public static final IMS_KEY_INGEST_IDP_IMS:Ljava/lang/String; = "ims"

.field private static final IMS_KEY_JUMP:Ljava/lang/String; = "jump"

.field private static final IMS_KEY_LAST_NAME:Ljava/lang/String; = "last_name"

.field private static final IMS_KEY_LOCALE:Ljava/lang/String; = "locale"

.field public static final IMS_KEY_OPENID_SCOPE:Ljava/lang/String; = "openid"

.field private static final IMS_KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final IMS_KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final IMS_KEY_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field private static final IMS_KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final IMS_KEY_SERVICE_ACCOUNTS:Ljava/lang/String; = "serviceAccounts"

.field private static final IMS_KEY_SERVICE_CODE:Ljava/lang/String; = "serviceCode"

.field private static final IMS_KEY_SERVICE_CODE_CC:Ljava/lang/String; = "creative_cloud"

.field private static final IMS_KEY_SERVICE_LEVEL:Ljava/lang/String; = "serviceLevel"

.field private static final IMS_KEY_SOCIAL_IDP_TOKEN:Ljava/lang/String; = "idp_token"

.field private static final IMS_KEY_SOCIAL_PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field private static final IMS_KEY_SOCIAL_PROVIDER_NAME:Ljava/lang/String; = "providerName"

.field private static final IMS_KEY_STATE:Ljava/lang/String; = "state"

.field private static final IMS_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final IMS_KEY_TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field private static final IMS_KEY_TOKEN_TYPE_AUTH:Ljava/lang/String; = "authorization_code"

.field private static final IMS_KEY_TOKEN_TYPE_DEVICE:Ljava/lang/String; = "device"

.field private static final IMS_KEY_TRUE:Ljava/lang/String; = "true"

.field private static final IMS_SIGN_IN_IDP_FLOW:Ljava/lang/String; = "login"

.field private static final IMS_SIGN_UP_IDP_FLOW:Ljava/lang/String; = "create_account"

.field private static final IMS_SOCIAL_SIGN_IN_IDP_FLOW:Ljava/lang/String; = "social.native"

.field public static final SOCIAL_PROVIDER_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final SOCIAL_PROVIDER_GOOGLE:Ljava/lang/String; = "google"

.field private static final T:Ljava/lang/String; = "AuthIMS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static volatile sharedInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

.field private static simulationCount:I


# instance fields
.field private volatile accessToken:Ljava/lang/String;

.field private volatile accessTokenExpirationTime:Ljava/util/Date;

.field private volatile accountType:Ljava/lang/String;

.field private volatile adobeID:Ljava/lang/String;

.field private final authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

.field private cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

.field private volatile clientID:Ljava/lang/String;

.field private volatile clientScope:Ljava/lang/String;

.field private volatile clientSecret:Ljava/lang/String;

.field private volatile clientState:Ljava/lang/String;

.field private volatile continuationToken:Ljava/lang/String;

.field private volatile countryCode:Ljava/lang/String;

.field private volatile deviceID:Ljava/lang/String;

.field private volatile deviceName:Ljava/lang/String;

.field private volatile deviceToken:Ljava/lang/String;

.field private volatile deviceTokenExpirationTime:Ljava/util/Date;

.field private volatile displayName:Ljava/lang/String;

.field private volatile emailAddress:Ljava/lang/String;

.field private volatile emailVerified:Ljava/lang/String;

.field private volatile entitlements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

.field private volatile firstName:Ljava/lang/String;

.field private grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

.field private volatile idpFlow:Ljava/lang/String;

.field private volatile imsHost:Ljava/lang/String;

.field private volatile isEnterPrise:Ljava/lang/String;

.field private volatile lastName:Ljava/lang/String;

.field private volatile licenseStatus:Ljava/lang/String;

.field private networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

.field private volatile postLoginWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

.field private volatile redirectURI:Ljava/lang/String;

.field private volatile refreshToken:Ljava/lang/String;

.field private volatile refreshTokenExpirationTime:Ljava/util/Date;

.field private volatile serviceCodes:Ljava/lang/String;

.field private volatile serviceLevel:Ljava/lang/String;

.field private volatile sharedDeviceToken:Ljava/lang/String;

.field private volatile socialProvider:Ljava/lang/String;

.field private volatile socialProviderToken:Ljava/lang/String;

.field private volatile socialProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "creative_sdk"

    aput-object v2, v0, v1

    const-string/jumbo v1, "AdobeID"

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->IMS_CREATIVE_SDK_SCOPES:[Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->sharedInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    .line 217
    sput v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->simulationCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->redirectURI:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getFoundationAuthAESKey()[B

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setCipherKey([B)V

    .line 231
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->setSharedKeychain(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;)V

    .line 233
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getSharedKeychain()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getLastEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdditionalClientScopes([Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lorg/json/JSONException;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->onJSONException(Lorg/json/JSONException;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviderToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->profileFromServiceWithAccessToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUserInteractionDataFor(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->createAuthErrorForContinuableEvent(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->createAuthError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenExpiration(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setTokenExpirationTime(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviders:Ljava/util/HashMap;

    return-object p1
.end method

.method private addClientState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2210
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2211
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2214
    :cond_0
    return-object p1
.end method

.method private addDeviceData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2218
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "response_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "device_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "device_name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2221
    return-object v0
.end method

.method private createAuthError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorOffline:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_0

    .line 750
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_OFFLINE:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 751
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_NETWORK_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_0
.end method

.method private createAuthErrorForContinuableEvent(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 779
    .line 780
    if-nez p1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-object v0

    .line 783
    :cond_1
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 785
    if-eqz v2, :cond_0

    .line 788
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 790
    :pswitch_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_0

    .line 788
    :sswitch_0
    const-string/jumbo v3, "ride_AdobeID_acct_evs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "ride_AdobeID_acct_terms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "ride_AdobeID_acct_actreq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    .line 793
    :pswitch_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_0

    .line 796
    :pswitch_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_0

    .line 788
    :sswitch_data_0
    .sparse-switch
        -0x694d1ec9 -> :sswitch_1
        -0xa3bb26e -> :sswitch_0
        0x1f21fd1c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createSocialLoginCallback(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    return-object v0
.end method

.method private createSocialLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string/jumbo v1, "provider_id"

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v1, "idp_token"

    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v1, "client_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v1, "scope"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientScope()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    const-string/jumbo v1, "response_type"

    const-string/jumbo v2, "device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v1, "device_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const-string/jumbo v1, "state"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientState()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    const-string/jumbo v1, "client_secret"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v1, "redirect_uri"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRedirectURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v0

    .line 307
    :cond_1
    const-string/jumbo v1, "response_type"

    const-string/jumbo v2, "code"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getServiceInfoFromServiceAccounts(Lorg/json/JSONArray;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$ServiceAccountInfo;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2609
    .line 2612
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2613
    if-eqz p1, :cond_1

    .line 2614
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2617
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v3

    .line 2621
    :goto_1
    if-eqz v4, :cond_0

    .line 2624
    :try_start_1
    const-string/jumbo v3, "serviceCode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2628
    :goto_2
    if-eqz v3, :cond_0

    .line 2629
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    const-string/jumbo v6, "creative_cloud"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2632
    :try_start_2
    const-string/jumbo v3, "serviceLevel"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 2614
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2618
    :catch_0
    move-exception v3

    .line 2619
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v2

    goto :goto_1

    .line 2625
    :catch_1
    move-exception v3

    .line 2626
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v2

    goto :goto_2

    .line 2633
    :catch_2
    move-exception v3

    .line 2634
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_1
    move-object v0, v2

    .line 2641
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$ServiceAccountInfo;

    invoke-direct {v1, p0, v5, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$ServiceAccountInfo;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$1;)V

    return-object v1
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->sharedInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    if-nez v0, :cond_1

    .line 245
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    monitor-enter v1

    .line 246
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->sharedInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->sharedInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    .line 249
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->sharedInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2200
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2205
    :goto_0
    return-object v0

    .line 2200
    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Error during encode"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2203
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getUserInteractionDataFor(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 759
    .line 760
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getKeyForResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 761
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 762
    if-eqz v2, :cond_2

    .line 764
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :try_start_1
    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    const-string/jumbo v3, "jump"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 768
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    const-string/jumbo v3, "ride_AdobeID_acct_evs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ride_AdobeID_acct_terms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ride_AdobeID_acct_actreq"

    .line 769
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 775
    :cond_1
    :goto_0
    return-object v0

    .line 771
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 772
    :goto_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AuthIMS"

    const-string/jumbo v4, "Error parsing JSON"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 771
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSimulation()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 700
    sget v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->simulationCount:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 701
    sget v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->simulationCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->simulationCount:I

    .line 702
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 703
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;-><init>()V

    .line 704
    const/16 v3, 0x190

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setStatusCode(I)V

    .line 705
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 707
    :try_start_0
    const-string/jumbo v4, "error"

    const-string/jumbo v5, "ride_AdobeID_acct_evs"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    const-string/jumbo v4, "jump"

    const-string/jumbo v5, "http://www.google.com"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setData(Ljava/nio/ByteBuffer;)V

    .line 713
    const-string/jumbo v3, "Response"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v3, v2, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 717
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 709
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2391
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v3, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;)V

    .line 2395
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne p2, v0, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->adobeID:Ljava/lang/String;

    .line 2397
    invoke-virtual {v3, p3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setQueryParams(Ljava/util/Map;)V

    .line 2400
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne p2, v0, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2401
    const-string/jumbo v0, ""

    .line 2402
    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setQueryParams(Ljava/util/Map;)V

    .line 2405
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2407
    goto :goto_0

    .line 2408
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2409
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2410
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setBody([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 2417
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {v3, v0, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    :cond_3
    invoke-virtual {v3, p6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setShouldAddClientId(Z)V

    .line 2424
    :try_start_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAuthHandler;->createHandlerForAuthOps()Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2430
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v1, v3, v2, p5, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 2432
    return-void

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AuthIMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in forming request body - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2425
    :catch_1
    move-exception v0

    .line 2427
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_2
.end method

.method private onJSONException(Lorg/json/JSONException;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 3

    .prologue
    .line 728
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "Error parsing JSON"

    invoke-static {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 730
    return-void
.end method

.method private profileFromServiceWithAccessToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2714
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    move-result-object v1

    .line 2716
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->refreshEndpoint()V

    .line 2720
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAuthHandler;->createHandlerForAuthOps()Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2727
    :goto_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$14;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$14;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$15;

    invoke-direct {v3, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$15;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;->getUserProfileForToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 2785
    return-void

    .line 2721
    :catch_0
    move-exception v2

    .line 2722
    const/4 v0, 0x0

    .line 2723
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeAnySharedSSOAcount()V
    .locals 6

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    .line 1129
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v2, "remove_account"

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackSSO()V

    .line 1132
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1133
    const-string/jumbo v0, "remove_account"

    const-string/jumbo v1, "Account Type not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1139
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$8;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getSharedAdobeIdTokenFromAccountManager(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    goto :goto_0
.end method

.method private resetKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2665
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "resetKeys"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->resetTokens()V

    .line 2669
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->adobeID:Ljava/lang/String;

    .line 2670
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessToken:Ljava/lang/String;

    .line 2671
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    .line 2672
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->sharedDeviceToken:Ljava/lang/String;

    .line 2673
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    .line 2674
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->continuationToken:Ljava/lang/String;

    .line 2675
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessTokenExpirationTime:Ljava/util/Date;

    .line 2676
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceTokenExpirationTime:Ljava/util/Date;

    .line 2677
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    .line 2678
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->displayName:Ljava/lang/String;

    .line 2679
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->firstName:Ljava/lang/String;

    .line 2680
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->lastName:Ljava/lang/String;

    .line 2681
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->entitlements:Ljava/util/Set;

    .line 2682
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailAddress:Ljava/lang/String;

    .line 2683
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailVerified:Ljava/lang/String;

    .line 2684
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->isEnterPrise:Ljava/lang/String;

    .line 2685
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviderToken:Ljava/lang/String;

    .line 2686
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProvider:Ljava/lang/String;

    .line 2687
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->idpFlow:Ljava/lang/String;

    .line 2688
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceLevel:Ljava/lang/String;

    .line 2689
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceCodes:Ljava/lang/String;

    .line 2690
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->countryCode:Ljava/lang/String;

    .line 2691
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->licenseStatus:Ljava/lang/String;

    .line 2692
    return-void
.end method

.method private setAccessTokenExpiration(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1903
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->AccessToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    const v1, 0x15180

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setTokenExpiration(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/lang/String;I)V

    .line 1904
    return-void
.end method

.method private setClientScope(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientScope:Ljava/lang/String;

    .line 1343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ClientScope"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1344
    return-void
.end method

.method private setDeviceTokenExpiration(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1894
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->DeviceToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    const v1, 0xf099c0

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setTokenExpiration(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/lang/String;I)V

    .line 1895
    return-void
.end method

.method private setEntitlements(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->entitlements:Ljava/util/Set;

    .line 2049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2050
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2051
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2053
    :cond_0
    const-string/jumbo v0, "Entitlements"

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2054
    return-void
.end method

.method private setRefreshTokenExpiration(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1945
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->RefreshToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;

    const v1, 0x127500

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setTokenExpiration(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/lang/String;I)V

    .line 1946
    return-void
.end method

.method private setRefreshTokenExpirationTime(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    .line 1927
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting Refresh Token Expiration Time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const-string/jumbo v0, "RefreshTokenExpiration"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1929
    return-void
.end method

.method private setServiceCodes(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceCodes:Ljava/lang/String;

    .line 1643
    const-string/jumbo v0, "ServiceCode"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1644
    return-void
.end method

.method private setServiceLevel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceLevel:Ljava/lang/String;

    .line 1624
    const-string/jumbo v0, "ServiceLevel"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1625
    return-void
.end method

.method private setTokenExpiration(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1835
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1836
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 1837
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1838
    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setTokenExpirationTime(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/util/Date;)V

    .line 1841
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$10;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;)V

    invoke-virtual {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getTokenExpirationTime(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V

    .line 1885
    return-void
.end method

.method private setTokenExpirationTime(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 1819
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIdentityManagementService$TokenType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1830
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown token type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :goto_0
    return-void

    .line 1821
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenExpirationTime(Ljava/util/Date;)V

    goto :goto_0

    .line 1824
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessTokenExpirationTime(Ljava/util/Date;)V

    goto :goto_0

    .line 1827
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setRefreshTokenExpirationTime(Ljava/util/Date;)V

    goto :goto_0

    .line 1819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateEntitlements(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2650
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->entitlements:Ljava/util/Set;

    .line 2651
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2652
    :cond_0
    const-string/jumbo v0, "Entitlements"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2659
    :goto_0
    return-void

    .line 2655
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2656
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2657
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2658
    :cond_2
    const-string/jumbo v0, "Entitlements"

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2063
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    if-eqz p1, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearContinuableEventInfo()V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ContinuableEventJumpURL"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ContinuableEventErrorCode"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method fetchEntitlements()V
    .locals 1

    .prologue
    .line 2529
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->fetchEntitlements(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V

    .line 2530
    return-void
.end method

.method public fetchEntitlements(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V
    .locals 0

    .prologue
    .line 2606
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getAccessTokenExpiration()Ljava/util/Date;

    move-result-object v0

    .line 1352
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1353
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessToken:Ljava/lang/String;

    .line 1354
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Access Token; (inside if)ExpirationDate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessToken:Ljava/lang/String;

    return-object v0

    .line 1356
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Access Token; (inside else)ExpirationDate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAccessTokenExpirationTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessTokenExpirationTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getAccessTokenExpiration()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessTokenExpirationTime:Ljava/util/Date;

    .line 1761
    :cond_0
    const/4 v0, 0x0

    .line 1762
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessTokenExpirationTime:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 1763
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessTokenExpirationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1764
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting the access token expiration time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_1
    return-object v0
.end method

.method protected getAccessTokenWithAuthCode(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V
    .locals 7

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 814
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidClientId()V

    .line 857
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 819
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidClientSecret()V

    goto :goto_0

    .line 824
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 826
    const-string/jumbo v0, "grant_type"

    const-string/jumbo v1, "authorization_code"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string/jumbo v0, "code"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeDevice:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-ne v0, v1, :cond_2

    .line 830
    const-string/jumbo v0, "device_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_2
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string/jumbo v0, "client_secret"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string/jumbo v0, "redirect_uri"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRedirectURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inside getAccessTokenWithAuthCode() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getTokenURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$4;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto/16 :goto_0
.end method

.method public getAccessTokenWithDeviceToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V
    .locals 7

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 868
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidDeviceId()V

    .line 906
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 872
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidClientId()V

    goto :goto_0

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 876
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidClientSecret()V

    goto :goto_0

    .line 880
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 881
    const-string/jumbo v0, "grant_type"

    const-string/jumbo v1, "device"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string/jumbo v0, "device_token"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string/jumbo v0, "device_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v0, "client_secret"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v0, "redirect_uri"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRedirectURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v0, "scope"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inside getAccessTokenWithDeviceToken() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getTokenURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$5;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto/16 :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accountType:Ljava/lang/String;

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdobeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->adobeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->adobeID:Ljava/lang/String;

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->adobeID:Ljava/lang/String;

    return-object v0
.end method

.method getAuthURL()Ljava/net/URL;
    .locals 5

    .prologue
    .line 2103
    const/4 v1, 0x0

    .line 2105
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2109
    :goto_0
    return-object v0

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AuthIMS"

    const-string/jumbo v4, "Invalid auth URL"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getCipher()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;
    .locals 1

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ClientId"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientID:Ljava/lang/String;

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method public getClientScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientScope:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getClientScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientScope:Ljava/lang/String;

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientScope:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientSecret:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ClientSecret"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientSecret:Ljava/lang/String;

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getClientState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientState:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ClientState"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientState:Ljava/lang/String;

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientState:Ljava/lang/String;

    return-object v0
.end method

.method protected getContinuableError()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 4

    .prologue
    .line 1274
    const/4 v0, 0x0

    .line 1275
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getContiuableEventErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 1276
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1288
    :goto_1
    return-object v0

    .line 1276
    :sswitch_0
    const-string/jumbo v3, "ride_AdobeID_acct_evs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "ride_AdobeID_acct_terms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "ride_AdobeID_acct_actreq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 1278
    :pswitch_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_1

    .line 1281
    :pswitch_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_1

    .line 1284
    :pswitch_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    goto :goto_1

    .line 1276
    :sswitch_data_0
    .sparse-switch
        -0x694d1ec9 -> :sswitch_1
        -0xa3bb26e -> :sswitch_0
        0x1f21fd1c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->continuationToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->continuationToken:Ljava/lang/String;

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getContiuableEventErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getContiuableEventErrorCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContiuableEventJumpURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getContiuableEventJumpURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getCountrycode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->countryCode:Ljava/lang/String;

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "DeviceId"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceID:Ljava/lang/String;

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "DeviceName"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceName:Ljava/lang/String;

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getDeviceTokenExpiration()Ljava/util/Date;

    move-result-object v0

    .line 1531
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    .line 1533
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Device Token; (inside if)ExpirationDate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    return-object v0

    .line 1535
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Device Token; (inside else)ExpirationDate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceTokenExpirationTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceTokenExpirationTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getDeviceTokenExpiration()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceTokenExpirationTime:Ljava/util/Date;

    .line 1789
    :cond_0
    const/4 v0, 0x0

    .line 1790
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceTokenExpirationTime:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 1791
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceTokenExpirationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1792
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting DeviceTokenExpirationTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    :cond_1
    return-object v0
.end method

.method getDeviceURL()Ljava/net/URL;
    .locals 5

    .prologue
    .line 2116
    const/4 v1, 0x0

    .line 2118
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ims/login/v1/device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    :goto_0
    return-object v0

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AuthIMS"

    const-string/jumbo v4, "Invalid device url"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->displayName:Ljava/lang/String;

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailAddress:Ljava/lang/String;

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailVerified:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getEmailVerified()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailVerified:Ljava/lang/String;

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailVerified:Ljava/lang/String;

    return-object v0
.end method

.method public getEntitlements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->entitlements:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getEntitlements()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->entitlements:Ljava/util/Set;

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->entitlements:Ljava/util/Set;

    return-object v0
.end method

.method public getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->firstName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->firstName:Ljava/lang/String;

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    return-object v0
.end method

.method public getIDPFlow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->idpFlow:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "idpFlow"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->idpFlow:Ljava/lang/String;

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->idpFlow:Ljava/lang/String;

    return-object v0
.end method

.method public getImsHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEnterPrise()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->isEnterPrise:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getEnterpriseInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->isEnterPrise:Ljava/lang/String;

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->isEnterPrise:Ljava/lang/String;

    return-object v0
.end method

.method getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->lastName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->lastName:Ljava/lang/String;

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->licenseStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getLicenseStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->licenseStatus:Ljava/lang/String;

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->licenseStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getListOfSocialProviders(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeGetProvidersCallback;)V
    .locals 7

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2287
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeGetProvidersCallback;->onInvalidClientId()V

    .line 2331
    :goto_0
    return-void

    .line 2290
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2291
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeGetProvidersCallback;->onInvalidDeviceId()V

    goto :goto_0

    .line 2294
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2295
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    const-string/jumbo v0, "device_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialProviderURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$12;

    invoke-direct {v5, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$12;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeGetProvidersCallback;)V

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto :goto_0
.end method

.method getLoginAPI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/ims/authorize/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPIVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLoginAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2071
    const-string/jumbo v0, "v1"

    return-object v0
.end method

.method getLogoutAPI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/ims/logout/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLogoutAPIVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLogoutAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2174
    const-string/jumbo v0, "v1"

    return-object v0
.end method

.method public getPostLoginWorkCallback()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;
    .locals 1

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->postLoginWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    return-object v0
.end method

.method public getRedirectURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->redirectURI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2820
    const-string/jumbo v0, "https://adobe.com"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->redirectURI:Ljava/lang/String;

    .line 2822
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->redirectURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getRefreshTokenExpiration()Ljava/util/Date;

    move-result-object v0

    .line 1559
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1560
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    .line 1561
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Refresh Token; (inside if)ExpirationDate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    return-object v0

    .line 1563
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Refresh Token; (inside else)ExpirationDate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRefreshTokenExpirationTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getRefreshTokenExpiration()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    .line 1913
    :cond_0
    const/4 v0, 0x0

    .line 1914
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 1915
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1916
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Getting Refresh Token Expiration Time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    :cond_1
    return-object v0
.end method

.method public getServiceCodes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceCodes:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getServiceCodes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceCodes:Ljava/lang/String;

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceCodes:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceLevel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getServiceLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceLevel:Ljava/lang/String;

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->serviceLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 2225
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAuthURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2226
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientScope()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "redirect_uri"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "signin%3A%2F%2Fcomplete"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "scope"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "idp_flow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "force_marketing_permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "client_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2230
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeAuthorization:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-eq v1, v2, :cond_0

    .line 2231
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2233
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2236
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    :goto_0
    return-object v0

    .line 2237
    :catch_0
    move-exception v0

    .line 2238
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Sign in url is malformed"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSignOutURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLogoutAPI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "client_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "client_secret"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2190
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    :goto_0
    return-object v0

    .line 2191
    :catch_0
    move-exception v0

    .line 2192
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Malformed exception"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignUpURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 2263
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAuthURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2264
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientScope()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "redirect_uri"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "signin%3A%2F%2Fcomplete"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "scope"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "idp_flow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "create_account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "force_marketing_permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "client_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2266
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeAuthorization:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-eq v1, v2, :cond_0

    .line 2267
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2273
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2276
    :goto_0
    return-object v0

    .line 2274
    :catch_0
    move-exception v0

    .line 2275
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Malformed url"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSocialLoginAPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2079
    const-string/jumbo v0, "/ims/social/v1/native"

    return-object v0
.end method

.method getSocialLoginURL()Ljava/net/URL;
    .locals 5

    .prologue
    .line 2088
    const/4 v1, 0x0

    .line 2090
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialLoginAPI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    :goto_0
    return-object v0

    .line 2091
    :catch_0
    move-exception v0

    .line 2092
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AuthIMS"

    const-string/jumbo v4, "Invalid SOCIAL-login URL"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getSocialProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialProviderToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviderToken:Ljava/lang/String;

    return-object v0
.end method

.method getSocialProviderURL()Ljava/net/URL;
    .locals 5

    .prologue
    .line 2144
    const/4 v1, 0x0

    .line 2146
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ims/social/providers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    :goto_0
    return-object v0

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AuthIMS"

    const-string/jumbo v4, "Invalid social-provider url"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getSocialSignInData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2244
    const-string/jumbo v0, ""

    .line 2245
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientScope()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2246
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialProviderToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2247
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getUTFEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "redirect_uri=signin%3A%2F%2Fcomplete&scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "idp_flow"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "social.native"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "force_marketing_permission"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "client_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "provider_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "idp_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeAuthorization:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-eq v1, v2, :cond_0

    .line 2252
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2256
    return-object v0
.end method

.method public getTokenExpirationTime(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V
    .locals 7

    .prologue
    .line 1956
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1957
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 1986
    :goto_0
    return-void

    .line 1961
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1962
    const-string/jumbo v0, "token"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getValidateTokenURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$11;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$11;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto :goto_0
.end method

.method getTokenURL()Ljava/net/URL;
    .locals 5

    .prologue
    .line 2129
    const/4 v1, 0x0

    .line 2131
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ims/token/v1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2135
    :goto_0
    return-object v0

    .line 2132
    :catch_0
    move-exception v0

    .line 2133
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AuthIMS"

    const-string/jumbo v4, "Invalid token url"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method getValidateTokenURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 2157
    const/4 v1, 0x0

    .line 2159
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ims/validate_token/v1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    :goto_0
    return-object v0

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Invalid validate token url"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method invalidateAccessToken()V
    .locals 1

    .prologue
    .line 1936
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessTokenExpirationTime(Ljava/util/Date;)V

    .line 1937
    return-void
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviders:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginWithFacebookToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 7

    .prologue
    .line 408
    const-string/jumbo v0, "facebook"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setSocialProvider(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setSocialProviderToken(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeDevice:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialLoginURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v0, "facebook"

    invoke-direct {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->createSocialLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->createSocialLoginCallback(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto :goto_0
.end method

.method public loginWithGoogleToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 7

    .prologue
    .line 422
    const-string/jumbo v0, "google"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setSocialProvider(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setSocialProviderToken(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeDevice:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialLoginURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v0, "google"

    invoke-direct {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->createSocialLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->createSocialLoginCallback(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto :goto_0
.end method

.method protected parseFromProfile(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 2435
    return-void
.end method

.method protected parseResponse(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;Z)V
    .locals 5

    .prologue
    .line 2457
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "parseResponse.."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2460
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2461
    if-nez v0, :cond_0

    .line 2462
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2467
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2468
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adobe ID missing : response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v2, "access_token"

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 2470
    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v3, "Empty user id returned from response"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 2473
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdobeID(Ljava/lang/String;)V

    .line 2474
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessToken(Ljava/lang/String;)V

    .line 2476
    const-string/jumbo v0, "device_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2477
    const-string/jumbo v0, "device_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceToken(Ljava/lang/String;)V

    .line 2478
    const-string/jumbo v0, "device_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenExpiration(Ljava/lang/String;)V

    .line 2482
    :cond_2
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2483
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setRefreshToken(Ljava/lang/String;)V

    .line 2484
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setRefreshTokenExpiration(Ljava/lang/String;)V

    .line 2487
    :cond_3
    const-string/jumbo v0, "continuation_token"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContinuationToken(Ljava/lang/String;)V

    .line 2488
    const-string/jumbo v0, "displayName"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDisplayName(Ljava/lang/String;)V

    .line 2489
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setFirstName(Ljava/lang/String;)V

    .line 2490
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setLastName(Ljava/lang/String;)V

    .line 2491
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEmailAddress(Ljava/lang/String;)V

    .line 2492
    const-string/jumbo v0, "emailVerified"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEmailVerified(Ljava/lang/String;)V

    .line 2493
    const-string/jumbo v0, "countryCode"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setCountrycode(Ljava/lang/String;)V

    .line 2494
    const-string/jumbo v0, "account_type"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccountType(Ljava/lang/String;)V

    .line 2496
    const-string/jumbo v0, "serviceAccounts"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getServiceInfoFromServiceAccounts(Lorg/json/JSONArray;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$ServiceAccountInfo;

    move-result-object v0

    .line 2497
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$ServiceAccountInfo;->getServiceLevel()Ljava/lang/String;

    move-result-object v1

    .line 2498
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$ServiceAccountInfo;->getCombinedServiceCodes()Ljava/lang/String;

    move-result-object v0

    .line 2500
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2501
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setServiceLevel(Ljava/lang/String;)V

    .line 2504
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2505
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setServiceCodes(Ljava/lang/String;)V

    .line 2508
    :cond_5
    const-string/jumbo v0, "expires_in"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2510
    if-eqz v0, :cond_7

    .line 2511
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2512
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2515
    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 2516
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessTokenExpirationTime(Ljava/util/Date;)V

    .line 2522
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->fetchEntitlements()V

    .line 2523
    return-void

    .line 2465
    :cond_6
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2518
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessTokenExpirationTime(Ljava/util/Date;)V

    goto :goto_1
.end method

.method refreshAccessToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V
    .locals 7

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2342
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidClientId()V

    .line 2378
    :goto_0
    return-void

    .line 2345
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2346
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;->onInvalidClientSecret()V

    goto :goto_0

    .line 2350
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2351
    const-string/jumbo v0, "grant_type"

    const-string/jumbo v1, "refresh_token"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    const-string/jumbo v0, "client_secret"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Refreshing Access Token "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getTokenURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$13;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$13;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    goto :goto_0
.end method

.method resetRefreshToken()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1585
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    .line 1586
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshTokenExpirationTime:Ljava/util/Date;

    .line 1587
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "RefreshToken"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "RefreshTokenExpiration"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 1589
    return-void
.end method

.method setAccessToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessToken:Ljava/lang/String;

    .line 1367
    const-string/jumbo v0, "AccessToken"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1368
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting the access token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    return-void
.end method

.method public setAccessTokenExpirationTime(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accessTokenExpirationTime:Ljava/util/Date;

    .line 1778
    const-string/jumbo v0, "AccessTokenExpiration"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1779
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting the expiration time of access token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    return-void
.end method

.method setAccountType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->accountType:Ljava/lang/String;

    .line 1456
    const-string/jumbo v0, "AccountType"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1457
    return-void
.end method

.method public setAdditionalClientScopes([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1227
    new-instance v2, Ljava/util/LinkedHashSet;

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->IMS_CREATIVE_SDK_SCOPES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1229
    if-eqz p1, :cond_1

    .line 1230
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 1232
    const-string/jumbo v5, "\\s"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1233
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1234
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1240
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1243
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setClientScope(Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method setAdobeID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "adobeID empty."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->adobeID:Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "AdobeID"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1324
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setClientID(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setClientSecret(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setClientState(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceID(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceName(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public setCipherKey([B)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2699
    if-nez p1, :cond_0

    .line 2709
    :goto_0
    return-void

    .line 2701
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 2702
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2704
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->createInstance([B)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2705
    :catch_0
    move-exception v0

    .line 2706
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CSDK Foundation Auth : Cannot create Cipher Instance !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setClientID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientID:Ljava/lang/String;

    .line 1693
    const-string/jumbo v0, "ClientId"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1694
    return-void
.end method

.method setClientSecret(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientSecret:Ljava/lang/String;

    .line 1710
    const-string/jumbo v0, "ClientSecret"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1711
    return-void
.end method

.method public setClientState(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clientState:Ljava/lang/String;

    .line 1721
    const-string/jumbo v0, "ClientState"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1722
    return-void
.end method

.method setContinuationToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->continuationToken:Ljava/lang/String;

    .line 1606
    const-string/jumbo v0, "ContinuationToken"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1607
    return-void
.end method

.method setContiuableEventErrorCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ContinuableEventErrorCode"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1296
    return-void
.end method

.method setContiuableEventJumpURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1260
    if-nez p1, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ContinuableEventJumpURL"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 1264
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->authKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    const-string/jumbo v1, "ContinuableEventJumpURL"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setCountrycode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->countryCode:Ljava/lang/String;

    .line 1507
    const-string/jumbo v0, "CountryCode"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1508
    return-void
.end method

.method protected setDeviceID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceID:Ljava/lang/String;

    .line 1742
    const-string/jumbo v0, "DeviceId"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1743
    return-void
.end method

.method setDeviceName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceName:Ljava/lang/String;

    .line 1676
    const-string/jumbo v0, "DeviceName"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1677
    return-void
.end method

.method setDeviceToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    .line 1548
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting Device Token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string/jumbo v0, "DeviceToken"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1550
    return-void
.end method

.method public setDeviceTokenDefaultExpiration()V
    .locals 3

    .prologue
    .line 1801
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1802
    const/16 v1, 0xd

    const v2, 0xf099c0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1803
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1804
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenExpirationTime(Ljava/util/Date;)V

    .line 1805
    return-void
.end method

.method public setDeviceTokenExpirationTime(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceTokenExpirationTime:Ljava/util/Date;

    .line 1814
    const-string/jumbo v0, "DeviceTokenExpiration"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1815
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting DeviceTokenExpirationTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    return-void
.end method

.method setDisplayName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->displayName:Ljava/lang/String;

    .line 1386
    const-string/jumbo v0, "DisplayName"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1387
    return-void
.end method

.method setEmailAddress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailAddress:Ljava/lang/String;

    .line 1474
    const-string/jumbo v0, "Email"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1475
    return-void
.end method

.method setEmailVerified(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->emailVerified:Ljava/lang/String;

    .line 1492
    const-string/jumbo v0, "EmailVerified"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1493
    return-void
.end method

.method public setEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 4

    .prologue
    .line 2002
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$16;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2021
    const-string/jumbo v0, "https://ims-na1.adobelogin.com"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    .line 2026
    :goto_0
    const-string/jumbo v0, "Adobe Creative SDK"

    .line 2027
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->networkService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 2029
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 2030
    return-void

    .line 2005
    :pswitch_0
    const-string/jumbo v0, "https://ims-na1-stg1.adobelogin.com"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    goto :goto_0

    .line 2009
    :pswitch_1
    const-string/jumbo v0, "https://ims-na1-qa1.adobelogin.com"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    goto :goto_0

    .line 2013
    :pswitch_2
    const-string/jumbo v0, "https://ims-na1-qa2.adobelogin.com"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    goto :goto_0

    .line 2017
    :pswitch_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeInvalidIMSHostException;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeInvalidIMSHostException;-><init>()V

    throw v0

    .line 2002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setFirstName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->firstName:Ljava/lang/String;

    .line 1418
    const-string/jumbo v0, "FirstName"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1419
    return-void
.end method

.method public setGrantType(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->grantType:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    .line 284
    return-void
.end method

.method protected setIDPFlow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->idpFlow:Ljava/lang/String;

    .line 1753
    const-string/jumbo v0, "idpFlow"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1754
    return-void
.end method

.method protected setImsHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->imsHost:Ljava/lang/String;

    .line 1660
    return-void
.end method

.method public setIsEnterPrise(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->isEnterPrise:Ljava/lang/String;

    .line 1399
    const-string/jumbo v0, "EnterpriseInfo"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1401
    return-void
.end method

.method setLastName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->lastName:Ljava/lang/String;

    .line 1437
    const-string/jumbo v0, "LastName"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1438
    return-void
.end method

.method setLicenceStatus(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->licenseStatus:Ljava/lang/String;

    .line 1522
    const-string/jumbo v0, "LicenseStatus"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->licenseStatus:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1523
    return-void
.end method

.method public setPostLoginWorkCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;)V
    .locals 0

    .prologue
    .line 2808
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->postLoginWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    .line 2809
    return-void
.end method

.method public setRedirectURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2827
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->redirectURI:Ljava/lang/String;

    .line 2828
    return-void
.end method

.method setRefreshToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    .line 1576
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting Refresh Token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string/jumbo v0, "RefreshToken"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->addToKeychain(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1578
    return-void
.end method

.method public setSocialProvider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2800
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProvider:Ljava/lang/String;

    .line 2801
    return-void
.end method

.method public setSocialProviderToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2792
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->socialProviderToken:Ljava/lang/String;

    .line 2793
    return-void
.end method

.method public signIn(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    :cond_2
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    .line 455
    :cond_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "access_token"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 458
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Trying to refresh the access token with refresh token"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshToken:Ljava/lang/String;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    invoke-virtual {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->refreshAccessToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    .line 695
    :goto_0
    return-void

    .line 573
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 574
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Trying to refresh the access token with device token"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->deviceToken:Ljava/lang/String;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    invoke-virtual {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessTokenWithDeviceToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    goto :goto_0

    .line 692
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "Show signin UI"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;->AdobeAuthIMSInfoNeededUsernameAndPassword:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onInfoNeeded(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;)V

    goto :goto_0
.end method

.method public signInWithAuthCode(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 3

    .prologue
    .line 915
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "trying to sign in with authCode"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "access_token"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 918
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$6;

    invoke-direct {v1, p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    invoke-virtual {p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessTokenWithAuthCode(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    .line 1007
    return-void
.end method

.method public signInWithDeviceToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 3

    .prologue
    .line 1016
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "trying to sign in with authCode"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenExpiration(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "access_token"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    invoke-virtual {p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessTokenWithDeviceToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;)V

    .line 1096
    return-void
.end method

.method public signOut(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1172
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContiuableEventJumpURL(Ljava/lang/String;)V

    .line 1174
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppLogout:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1180
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;

    invoke-direct {v5, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;)V

    .line 1198
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSignOutURL()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->makeHTTPOperationForURL(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Z)V

    .line 1200
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "Trying to reset tokens from signOut()(accessToken is not null)"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->removeAnySharedSSOAcount()V

    .line 1202
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->resetKeys()V

    .line 1213
    :goto_0
    return-void

    .line 1206
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AuthIMS"

    const-string/jumbo v3, "Trying to reset tokens from signOut()(accessToken is null)"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->removeAnySharedSSOAcount()V

    .line 1208
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->resetKeys()V

    .line 1209
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1210
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;->onSuccess()V

    goto :goto_0
.end method

.method public stuffCredentialsWithAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->resetKeys()V

    .line 1112
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessToken(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdobeID(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDisplayName(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setFirstName(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0, p5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setLastName(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0, p6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEmailAddress(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0, p7}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEmailVerified(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAccessTokenExpiration(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->fetchEntitlements()V

    .line 1121
    return-void
.end method

.method public switchAccount()V
    .locals 3

    .prologue
    .line 1216
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    const-string/jumbo v2, "SWITCH Account"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->resetKeys()V

    .line 1218
    return-void
.end method
