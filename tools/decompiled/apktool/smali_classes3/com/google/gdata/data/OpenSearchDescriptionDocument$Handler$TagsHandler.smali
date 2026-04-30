.class Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OpenSearchDescriptionDocument.java"


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$TagsHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    .line 454
    return-void
.end method
