.class public final enum Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
.super Ljava/lang/Enum;
.source "AdobeCreativeCloudApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field public static final enum AdobeAnimateCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field public static final enum AdobeIllustratorCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field public static final enum AdobeInDesignCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field public static final enum AdobePhotoshopCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field public static final enum AdobeUnknownCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    const-string/jumbo v1, "AdobeUnknownCreativeCloud"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeUnknownCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    const-string/jumbo v1, "AdobePhotoshopCreativeCloud"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobePhotoshopCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    const-string/jumbo v1, "AdobeIllustratorCreativeCloud"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeIllustratorCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    const-string/jumbo v1, "AdobeInDesignCreativeCloud"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeInDesignCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    const-string/jumbo v1, "AdobeAnimateCreativeCloud"

    invoke-direct {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeAnimateCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeUnknownCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobePhotoshopCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeIllustratorCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeInDesignCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->AdobeAnimateCreativeCloud:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->$VALUES:[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->id:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->$VALUES:[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;->id:I

    return v0
.end method
