.class public Lcom/google/gdata/util/XmlBlob;
.super Ljava/lang/Object;
.source "XmlBlob.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected base:Ljava/lang/String;

.field protected blob:Ljava/lang/String;

.field protected fullText:Ljava/lang/String;

.field protected lang:Ljava/lang/String;

.field protected namespaces:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/util/XmlBlob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    return-void
.end method

.method public static endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->innerXml(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/XmlBlob;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    if-eqz p3, :cond_a

    .line 111
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getLang()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getBase()Ljava/lang/String;

    move-result-object v2

    .line 114
    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    if-eqz p4, :cond_1

    .line 119
    invoke-interface {v0, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_1
    if-eqz v1, :cond_2

    .line 123
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v4, "xml:lang"

    invoke-direct {v3, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    if-eqz v2, :cond_c

    .line 127
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v3, "xml:base"

    invoke-direct {v1, v3, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p4, v0

    .line 134
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getNamespaces()Ljava/util/List;

    move-result-object v2

    .line 135
    if-nez p5, :cond_6

    const/4 v0, 0x0

    .line 137
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 139
    const/4 v0, 0x0

    .line 166
    :goto_2
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 167
    return-void

    .line 130
    :cond_4
    sget-boolean v0, Lcom/google/gdata/util/XmlBlob;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_5

    if-eqz v2, :cond_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_6
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    .line 143
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 152
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    :cond_8
    if-eqz p5, :cond_9

    .line 157
    invoke-interface {v1, p5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_9
    move-object v0, v1

    goto :goto_2

    .line 161
    :cond_a
    sget-boolean v0, Lcom/google/gdata/util/XmlBlob;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    if-eqz p3, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    move-object v0, p5

    .line 163
    goto :goto_2

    :cond_c
    move-object p4, v0

    goto :goto_0
.end method


# virtual methods
.method public addNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->base:Ljava/lang/String;

    return-object v0
.end method

.method public getBlob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->blob:Ljava/lang/String;

    return-object v0
.end method

.method public getFullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->fullText:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setBase(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->base:Ljava/lang/String;

    return-void
.end method

.method public setBlob(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->blob:Ljava/lang/String;

    return-void
.end method

.method public setFullText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->fullText:Ljava/lang/String;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->lang:Ljava/lang/String;

    return-void
.end method
