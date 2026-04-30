.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;
.super Ljava/lang/Enum;
.source "Adobe360WorkflowActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

.field public static final enum Adobe360WorkflowActionCapture:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

.field public static final enum Adobe360WorkflowActionCaptureN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

.field public static final enum Adobe360WorkflowActionEdit:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

.field public static final enum Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

.field public static final enum Adobe360WorkflowActionEmbedN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

.field public static final enum Adobe360WorkflowActionUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;


# instance fields
.field private _text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    const-string/jumbo v1, "Adobe360WorkflowActionEdit"

    const-string/jumbo v2, "edit"

    invoke-direct {v0, v1, v4, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEdit:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    const-string/jumbo v1, "Adobe360WorkflowActionEmbed"

    const-string/jumbo v2, "embed"

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    const-string/jumbo v1, "Adobe360WorkflowActionEmbedN"

    const-string/jumbo v2, "embedN"

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbedN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 39
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    const-string/jumbo v1, "Adobe360WorkflowActionCapture"

    const-string/jumbo v2, "capture"

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCapture:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    const-string/jumbo v1, "Adobe360WorkflowActionCaptureN"

    const-string/jumbo v2, "captureN"

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCaptureN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 47
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    const-string/jumbo v1, "Adobe360WorkflowActionUnknown"

    const/4 v2, 0x5

    const-string/jumbo v3, "miscellaneous"

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEdit:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbedN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCapture:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCaptureN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->_text:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static getActionType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "edit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEdit:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    .line 66
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string/jumbo v0, "embedN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbedN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    goto :goto_0

    .line 59
    :cond_1
    const-string/jumbo v0, "embed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionEmbed:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    goto :goto_0

    .line 61
    :cond_2
    const-string/jumbo v0, "capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCapture:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    goto :goto_0

    .line 63
    :cond_3
    const-string/jumbo v0, "captureN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->Adobe360WorkflowActionCaptureN:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    goto :goto_0

    .line 66
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->_text:Ljava/lang/String;

    return-object v0
.end method
