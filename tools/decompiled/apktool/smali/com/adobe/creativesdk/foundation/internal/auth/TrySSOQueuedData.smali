.class Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"


# instance fields
.field _ssoData:Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

.field isRequesUserCancelled:Z

.field tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->isRequesUserCancelled:Z

    .line 427
    return-void
.end method
