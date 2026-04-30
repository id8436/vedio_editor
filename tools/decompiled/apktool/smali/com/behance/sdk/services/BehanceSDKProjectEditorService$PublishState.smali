.class final enum Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
.super Ljava/lang/Enum;
.source "BehanceSDKProjectEditorService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum CREATING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum NOT_STARTED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum PUBLISHED_SUCCESSFULLY:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum PUBLISHING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field public static final enum WAITING_FOR_UPLOADS:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->NOT_STARTED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "CREATING_DRAFT"

    invoke-direct {v0, v1, v4}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->CREATING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "WAITING_FOR_UPLOADS"

    invoke-direct {v0, v1, v5}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->WAITING_FOR_UPLOADS:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "PUBLISHING_DRAFT"

    invoke-direct {v0, v1, v6}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "PUBLISHED_SUCCESSFULLY"

    invoke-direct {v0, v1, v7}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHED_SUCCESSFULLY:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "PUBLISH_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    const-string/jumbo v1, "PUBLISH_CANCELLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->NOT_STARTED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->CREATING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->WAITING_FOR_UPLOADS:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHED_SUCCESSFULLY:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->$VALUES:[Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->$VALUES:[Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v0}, [Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    return-object v0
.end method
