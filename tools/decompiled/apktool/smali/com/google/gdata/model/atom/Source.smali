.class public Lcom/google/gdata/model/atom/Source;
.super Lcom/google/gdata/model/Element;
.source "Source.java"


# static fields
.field public static final CONSTRUCT:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atom/Source;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/net/URI;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atom/Source;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGO:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/net/URI;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHTS:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBTITLE:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATED:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    const-class v1, Lcom/google/gdata/model/atom/Source;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    .line 74
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "source"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/atom/Source;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 81
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    .line 87
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "updated"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/DateTime;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    .line 93
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "title"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/TextContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    .line 99
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "subtitle"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/TextContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->SUBTITLE:Lcom/google/gdata/model/ElementKey;

    .line 106
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "rights"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/TextContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    .line 112
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "icon"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/net/URI;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    .line 118
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "logo"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/net/URI;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 286
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atom/Source;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 295
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atom/Source;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 316
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/atom/Source;)V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 304
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 131
    sget-object v0, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 132
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 133
    sget-object v0, Lcom/google/gdata/model/atom/Source;->SUBTITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 134
    sget-object v0, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 135
    sget-object v0, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 136
    sget-object v0, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 139
    sget-object v0, Lcom/google/gdata/model/atom/Source;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 143
    sget-object v1, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 144
    sget-object v1, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 145
    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 146
    sget-object v1, Lcom/google/gdata/model/atom/Source;->SUBTITLE:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 147
    sget-object v1, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 148
    sget-object v1, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 149
    sget-object v1, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 150
    sget-object v1, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 151
    sget-object v1, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 152
    sget-object v1, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 153
    sget-object v1, Lcom/google/gdata/model/atom/Source$Generator;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 156
    sget-object v0, Lcom/google/gdata/model/atom/Source;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public addAuthor(Lcom/google/gdata/model/atom/Person;)V
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 504
    return-void
.end method

.method public addAuthors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Person;

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->addAuthor(Lcom/google/gdata/model/atom/Person;)V

    goto :goto_0

    .line 510
    :cond_0
    return-void
.end method

.method public addCategory(Lcom/google/gdata/model/atom/Category;)V
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 341
    return-void
.end method

.method public addContributor(Lcom/google/gdata/model/atom/Person;)V
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 527
    return-void
.end method

.method public addContributors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Person;

    .line 531
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->addContributor(Lcom/google/gdata/model/atom/Person;)V

    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method public addHtmlLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 628
    :try_start_0
    new-instance v0, Lcom/google/gdata/model/atom/Link;

    const-string/jumbo v1, "alternate"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/model/atom/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 630
    if-eqz p2, :cond_0

    .line 631
    invoke-virtual {v0, p2}, Lcom/google/gdata/model/atom/Link;->setHrefLang(Ljava/lang/String;)V

    .line 633
    :cond_0
    if-eqz p3, :cond_1

    .line 634
    invoke-virtual {v0, p3}, Lcom/google/gdata/model/atom/Link;->setTitle(Ljava/lang/String;)V

    .line 636
    :cond_1
    sget-object v1, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Source;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;
    .locals 2

    .prologue
    .line 481
    :try_start_0
    new-instance v0, Lcom/google/gdata/model/atom/Link;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/gdata/model/atom/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->addLink(Lcom/google/gdata/model/atom/Link;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    return-object v0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addLink(Lcom/google/gdata/model/atom/Link;)V
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 477
    return-void
.end method

.method public clearAuthors()V
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 518
    return-void
.end method

.method public clearCategories()V
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 345
    return-void
.end method

.method public clearContributors()V
    .locals 1

    .prologue
    .line 540
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 541
    return-void
.end method

.method public clearLinks()V
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 495
    return-void
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/atom/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElementSet(Lcom/google/gdata/model/ElementKey;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContributors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGenerator()Lcom/google/gdata/model/atom/Source$Generator;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/google/gdata/model/atom/Source$Generator;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Source$Generator;

    return-object v0
.end method

.method public getHtmlLink()Lcom/google/gdata/model/atom/Link;
    .locals 2

    .prologue
    .line 648
    const-string/jumbo v0, "alternate"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Source;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 649
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Source;->getIconUri()Ljava/net/URI;

    move-result-object v0

    .line 381
    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Source;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Link;

    .line 570
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/model/atom/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinks(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Source;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Link;

    .line 590
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/model/atom/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_1
    return-object v1
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Source;->getLogoUri()Ljava/net/URI;

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 434
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogoUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getRights()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public getSubtitle()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/google/gdata/model/atom/Source;->SUBTITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public getUpdated()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public removeAuthor(Lcom/google/gdata/model/atom/Person;)Z
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/google/gdata/model/atom/Author;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeContributor(Lcom/google/gdata/model/atom/Person;)Z
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/google/gdata/model/atom/Contributor;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeLink(Lcom/google/gdata/model/atom/Link;)Z
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeLinks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 606
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 607
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Source;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Link;

    .line 608
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/model/atom/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Link;

    .line 613
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->removeLink(Lcom/google/gdata/model/atom/Link;)Z

    goto :goto_1

    .line 615
    :cond_2
    return-void
.end method

.method public setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Source$Generator;
    .locals 1

    .prologue
    .line 552
    new-instance v0, Lcom/google/gdata/model/atom/Source$Generator;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/Source$Generator;-><init>()V

    .line 553
    invoke-virtual {v0, p1}, Lcom/google/gdata/model/atom/Source$Generator;->setVersion(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p2}, Lcom/google/gdata/model/atom/Source$Generator;->setUri(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p3}, Lcom/google/gdata/model/atom/Source$Generator;->setName(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->setGenerator(Lcom/google/gdata/model/atom/Source$Generator;)V

    .line 557
    return-object v0
.end method

.method public setGenerator(Lcom/google/gdata/model/atom/Source$Generator;)V
    .locals 1

    .prologue
    .line 548
    sget-object v0, Lcom/google/gdata/model/atom/Source$Generator;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 549
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->setIcon(Ljava/net/URI;)V

    .line 410
    return-void

    .line 406
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIcon(Ljava/net/URI;)V
    .locals 3

    .prologue
    .line 418
    sget-object v1, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 419
    return-void

    .line 418
    :cond_0
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 323
    sget-object v1, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 324
    return-void

    .line 323
    :cond_0
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->ID:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Source;->setLogo(Ljava/net/URI;)V

    .line 460
    return-void

    .line 456
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLogo(Ljava/net/URI;)V
    .locals 3

    .prologue
    .line 468
    sget-object v1, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 469
    return-void

    .line 468
    :cond_0
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public setRights(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/google/gdata/model/atom/Source;->RIGHTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 369
    return-void
.end method

.method public setSubtitle(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/google/gdata/model/atom/Source;->SUBTITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 361
    return-void
.end method

.method public setTitle(Lcom/google/gdata/model/atom/TextContent;)V
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 353
    return-void
.end method

.method public setUpdated(Lcom/google/gdata/data/DateTime;)V
    .locals 3

    .prologue
    .line 331
    sget-object v1, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/Source;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 333
    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Source;->UPDATED:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method
