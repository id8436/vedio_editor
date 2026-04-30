.class Lcom/google/gdata/data/media/mediarss/AbstractTextElement$1;
.super Lcom/google/gdata/data/PlainTextConstruct$AtomHandler;
.source "AbstractTextElement.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/media/mediarss/AbstractTextElement;

.field final synthetic val$attrsHelper:Lcom/google/gdata/data/AttributeHelper;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/media/mediarss/AbstractTextElement;Lcom/google/gdata/data/PlainTextConstruct;Lcom/google/gdata/data/AttributeHelper;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$1;->this$0:Lcom/google/gdata/data/media/mediarss/AbstractTextElement;

    iput-object p3, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$1;->val$attrsHelper:Lcom/google/gdata/data/AttributeHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/google/gdata/data/PlainTextConstruct$AtomHandler;-><init>(Lcom/google/gdata/data/PlainTextConstruct;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/gdata/data/PlainTextConstruct$AtomHandler;->processEndElement()V

    .line 105
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractTextElement$1;->val$attrsHelper:Lcom/google/gdata/data/AttributeHelper;

    invoke-virtual {v0}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 106
    return-void
.end method
