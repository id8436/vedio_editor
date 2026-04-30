.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;
.super Ljava/lang/Object;
.source "AdobeCSDKAdobeIdAuthenticatorHelper.java"


# instance fields
.field isRequestCancelled:Z

.field requestError:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

.field tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->isRequestCancelled:Z

    .line 668
    return-void
.end method
