.class Lcom/adobe/premiereclip/MainActivity$19$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/MainActivity$19;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity$19;)V
    .locals 0

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$19$1;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$19$1;->this$1:Lcom/adobe/premiereclip/MainActivity$19;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/adobe/premiereclip/MainActivity$19;->totalAssetsCount:I

    .line 2010
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2007
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/MainActivity$19$1;->onCompletion(Ljava/lang/Integer;)V

    return-void
.end method
