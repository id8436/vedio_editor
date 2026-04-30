.class public Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;
.super Ljava/lang/Object;
.source "AdobeCSDKAdobeIDAccountType.java"


# static fields
.field public static final ADOBEID_ACCOUNT_TYPE_CC:Ljava/lang/String; = "com.adobe.creativesdk.foundation.auth.adobeID.CC"

.field public static final ADOBEID_ACCOUNT_TYPE_DC:Ljava/lang/String; = "com.adobe.creativesdk.foundation.auth.adobeID.DC"

.field public static final ADOBEID_AUTHTOKEN_TYPE:Ljava/lang/String; = "AdobeID access"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAccessGroupAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCCApplicationV2()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "com.adobe.creativesdk.foundation.auth.adobeID.CC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDCApplication()Z
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "com.adobe.creativesdk.foundation.auth.adobeID.DC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldUseSharedAccount()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->isCCApplicationV2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->isDCApplication()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
