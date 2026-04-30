.class Lcom/adobe/sync/ComponentManagerHelper$PairValue;
.super Ljava/lang/Object;
.source "ComponentManagerHelper.java"


# instance fields
.field private componentId:Ljava/lang/String;

.field private compositeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/sync/ComponentManagerHelper;


# direct methods
.method public constructor <init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->this$0:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->compositeId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->componentId:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompositeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->compositeId:Ljava/lang/String;

    return-object v0
.end method
