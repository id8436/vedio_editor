.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;
.super Ljava/lang/Enum;
.source "Adobe360WorkflowErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

.field public static final enum Adobe360WorkflowErrorActionRegistryUpdationInProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

.field public static final enum Adobe360WorkflowErrorBadRequest:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

.field public static final enum Adobe360WorkflowErrorFileSystemError:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

.field public static final enum Adobe360WorkflowErrorNotAuthenticated:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    const-string/jumbo v1, "Adobe360WorkflowErrorBadRequest"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorBadRequest:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    const-string/jumbo v1, "Adobe360WorkflowErrorFileSystemError"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorFileSystemError:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    const-string/jumbo v1, "Adobe360WorkflowErrorNotAuthenticated"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorNotAuthenticated:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    const-string/jumbo v1, "Adobe360WorkflowErrorActionRegistryUpdationInProgress"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorActionRegistryUpdationInProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorBadRequest:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorFileSystemError:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorNotAuthenticated:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorActionRegistryUpdationInProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->_val:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->_val:I

    return v0
.end method
