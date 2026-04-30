.class public Lcom/adobe/DeviceInfo/DeviceInfoProvider;
.super Ljava/lang/Object;
.source "DeviceInfoProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUniqueDeviceID(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->getSharedCipher()Lcom/adobe/DeviceInfo/DeviceInfoCipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/DeviceInfo/DeviceInfoCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
