.class synthetic Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorService.java"


# static fields
.field static final synthetic $SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 517
    invoke-static {}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->values()[Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    :try_start_0
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->NOT_STARTED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHED_SUCCESSFULLY:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_FAILED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->CREATING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->WAITING_FOR_UPLOADS:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    sget-object v1, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISHING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
