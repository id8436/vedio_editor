.class public final enum Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;
.super Ljava/lang/Enum;
.source "AdobeAuthUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

.field public static final enum AdobeAuthUserProfileLicenseStatusFree:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

.field public static final enum AdobeAuthUserProfileLicenseStatusPaid:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

.field public static final enum AdobeAuthUserProfileLicenseStatusTrial:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

.field public static final enum AdobeAuthUserProfileLicenseStatusUnknown:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    const-string/jumbo v1, "AdobeAuthUserProfileLicenseStatusUnknown"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusUnknown:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    const-string/jumbo v1, "AdobeAuthUserProfileLicenseStatusPaid"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusPaid:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    .line 48
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    const-string/jumbo v1, "AdobeAuthUserProfileLicenseStatusFree"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusFree:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    .line 50
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    const-string/jumbo v1, "AdobeAuthUserProfileLicenseStatusTrial"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusTrial:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusUnknown:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusPaid:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusFree:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->AdobeAuthUserProfileLicenseStatusTrial:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->$VALUES:[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->$VALUES:[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile$LicenseStatus;

    return-object v0
.end method
