.class Lcom/google/gdata/data/BaseEntry$OutOfLineReference;
.super Ljava/lang/Object;
.source "BaseEntry.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;
.implements Lcom/google/gdata/data/Reference;


# instance fields
.field private oolContent:Lcom/google/gdata/data/OutOfLineContent;

.field final synthetic this$0:Lcom/google/gdata/data/BaseEntry;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p2, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->oolContent:Lcom/google/gdata/data/OutOfLineContent;

    .line 690
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;Lcom/google/gdata/data/BaseEntry$1;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;)V

    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should not be generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2

    .prologue
    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should not be parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->oolContent:Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v0}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->oolContent:Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/OutOfLineContent;->setUri(Ljava/lang/String;)V

    .line 698
    return-void
.end method
