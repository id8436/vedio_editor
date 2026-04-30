.class public Lcom/google/gdata/data/webmastertools/SitemapMobile;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "SitemapMobile.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "sitemap-mobile"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# static fields
.field private static final SITEMAP_MARKUP_LANG:Ljava/lang/String; = "markup-language"

.field public static final SITEMAP_MOBILE:Ljava/lang/String; = "sitemap-mobile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public addMarkupLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;-><init>()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;->setValue(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapMobile;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 67
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/webmastertools/SitemapMobile;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 93
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapMobile$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapMobile$Handler;-><init>(Lcom/google/gdata/data/webmastertools/SitemapMobile;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getMarkupLanguages()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapMobile;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;

    .line 76
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method
