.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;
.super Ljava/lang/Enum;
.source "Adobe360Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field public static final enum ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field public static final enum ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field public static final enum ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field public static final enum ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field public static final enum ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

.field public static final enum ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    const-string/jumbo v1, "ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 89
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    const-string/jumbo v1, "ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 90
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    const-string/jumbo v1, "ADOBE_360_MESSAGE_FORMAT_COMPOSITE"

    invoke-direct {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 91
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    const-string/jumbo v1, "ADOBE_360_MESSAGE_FORMAT_SNAPSHOT"

    invoke-direct {v0, v1, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 92
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    const-string/jumbo v1, "ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT"

    invoke-direct {v0, v1, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 93
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    const-string/jumbo v1, "ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_UNSPECIFIED:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->val:I

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->val:I

    return v0
.end method
