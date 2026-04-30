.class Lcom/google/gdata/util/XmlParser$NamespaceDecl;
.super Ljava/lang/Object;
.source "XmlParser.java"


# instance fields
.field inBlob:Z

.field ns:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lcom/google/gdata/util/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Lcom/google/gdata/util/XmlParser$1;)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/google/gdata/util/XmlParser$NamespaceDecl;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    return-void
.end method
