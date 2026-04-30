.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;
.super Ljava/lang/Object;
.source "Adobe360WorkflowActionsManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static _sharedInsatnce:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;


# instance fields
.field private _actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionTaskInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    .line 57
    const-string/jumbo v0, "Adobe360WorkflowActionsManager"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->mActionTaskInProgress:Z

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->mActionTaskInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->getActionsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->removeActionFromList(Ljava/lang/String;)V

    return-void
.end method

.method private filterBasedOnInputType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 302
    .line 304
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getInputs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getInputs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getInputs()Ljava/util/ArrayList;

    move-result-object v7

    .line 308
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    .line 310
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getInputs()Ljava/util/ArrayList;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 312
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;

    .line 313
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;->getAcceptedMediaTypes()Ljava/util/ArrayList;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 315
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v4, v3

    move v5, v2

    .line 316
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    .line 317
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;->getAcceptedMediaTypes()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    move v6, v3

    .line 318
    :goto_3
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;->getAcceptedMediaTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_4

    .line 319
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionInput;->getAcceptedMediaTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 321
    const/4 v5, 0x1

    .line 326
    :cond_4
    if-eqz v5, :cond_6

    move v2, v5

    .line 328
    :goto_4
    if-eqz v2, :cond_3

    move v1, v2

    :goto_5
    move v2, v1

    .line 331
    goto :goto_1

    .line 318
    :cond_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    .line 316
    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_7
    move v2, v3

    .line 333
    :cond_8
    if-nez v2, :cond_2

    .line 334
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v2, v5

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5
.end method

.method private filterBasedOnOutputType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    .line 343
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getOutputs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getOutputs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getOutputs()Ljava/util/ArrayList;

    move-result-object v7

    .line 347
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    .line 349
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getOutputs()Ljava/util/ArrayList;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    .line 352
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;->getTypes()Ljava/util/ArrayList;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 354
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v4, v3

    move v5, v2

    .line 355
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    .line 356
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    move v6, v3

    .line 357
    :goto_3
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_4

    .line 358
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;->getTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 360
    const/4 v5, 0x1

    .line 365
    :cond_4
    if-eqz v5, :cond_6

    move v2, v5

    .line 367
    :goto_4
    if-eqz v2, :cond_3

    move v1, v2

    :goto_5
    move v2, v1

    .line 370
    goto :goto_1

    .line 357
    :cond_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    .line 355
    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_7
    move v2, v3

    .line 372
    :cond_8
    if-nez v2, :cond_2

    .line 373
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v2, v5

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5
.end method

.method private filterBasedOnSubType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 277
    .line 279
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getSubTypes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getSubTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getSubTypes()Ljava/util/ArrayList;

    move-result-object v4

    .line 284
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    move v2, v3

    .line 286
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 287
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 289
    const/4 v1, 0x1

    .line 293
    :goto_2
    if-nez v1, :cond_2

    .line 294
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private filterBasedOnType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 250
    .line 252
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getActionTypes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getActionTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;->getActionTypes()Ljava/util/ArrayList;

    move-result-object v4

    .line 257
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    move v2, v3

    .line 262
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 263
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 265
    const/4 v1, 0x1

    .line 269
    :goto_2
    if-nez v1, :cond_2

    .line 270
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private getActionsUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    .line 104
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$3;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 117
    const-string/jumbo v0, "http://apps-dev.adobe.io/v1/actions"

    .line 122
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    return-object v0

    .line 109
    :pswitch_0
    const-string/jumbo v0, "http://apps.adobe.io/v1/actions"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string/jumbo v0, "http://apps-stage.adobe.io/v1/actions"

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_sharedInsatnce:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static issueErrorCallback(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$1;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$1;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {p0, p2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeActionFromList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;

    .line 417
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method


# virtual methods
.method public fetchActions(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->mActionTaskInProgress:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Action Registry task in progress."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;->Adobe360WorkflowErrorActionRegistryUpdationInProgress:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;

    const-string/jumbo v2, "Action Registry task in progress"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowErrorCode;Ljava/lang/String;)V

    invoke-static {p2, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->issueErrorCallback(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 142
    monitor-exit p0

    .line 246
    :goto_0
    return-void

    .line 144
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 245
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    return-object v0
.end method

.method public getActions(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    :goto_0
    return-object v0

    .line 392
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->_actions:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->filterBasedOnType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V

    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 398
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->filterBasedOnSubType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V

    .line 400
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 401
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->filterBasedOnInputType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V

    .line 403
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionsManager;->filterBasedOnOutputType(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionFilter;Ljava/util/List;)V

    goto :goto_0
.end method
