.class public final enum Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;
.super Ljava/lang/Enum;
.source "AdobeLibraryDownloadPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

.field public static final enum AdobeLibraryDownloadPolicyTypeManifestAndRenditions:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

.field public static final enum AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

.field public static final enum AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    const-string/jumbo v1, "AdobeLibraryDownloadPolicyTypeManifestOnly"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    const-string/jumbo v1, "AdobeLibraryDownloadPolicyTypeManifestAndRenditions"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestAndRenditions:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    const-string/jumbo v1, "AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestAndRenditions:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    return-object v0
.end method
