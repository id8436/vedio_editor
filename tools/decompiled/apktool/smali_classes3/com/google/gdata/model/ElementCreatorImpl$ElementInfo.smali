.class final Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
.super Ljava/lang/Object;
.source "ElementCreatorImpl.java"


# instance fields
.field final action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

.field final key:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 706
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)V

    .line 707
    return-void
.end method

.method constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementCreatorImpl$Action;",
            ")V"
        }
    .end annotation

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput-object p1, p0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    .line 711
    iput-object p2, p0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    .line 712
    return-void
.end method
