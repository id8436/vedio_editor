.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
.source "Adobe360WorkflowException.java"


# instance fields
.field private final _description:Ljava/lang/String;

.field private final _errorCode:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;-><init>(Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;->_errorCode:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    .line 42
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;->_description:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;->_errorCode:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    return-object v0
.end method
