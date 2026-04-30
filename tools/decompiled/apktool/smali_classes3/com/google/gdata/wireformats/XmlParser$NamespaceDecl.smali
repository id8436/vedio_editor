.class Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;
.super Ljava/lang/Object;
.source "XmlParser.java"


# instance fields
.field inBlob:Z

.field ns:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Lcom/google/gdata/wireformats/XmlParser$1;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    return-void
.end method
