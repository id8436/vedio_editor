.class public Lcom/google/api/gbase/client/ServiceErrors;
.super Ljava/lang/Object;
.source "ServiceErrors.java"


# static fields
.field private static final DEFAULT_CONTENT_TYPE:Lcom/google/gdata/util/ContentType;


# instance fields
.field private dataErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;"
        }
    .end annotation
.end field

.field private requestErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string/jumbo v1, "text/plain"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/ServiceErrors;->DEFAULT_CONTENT_TYPE:Lcom/google/gdata/util/ContentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/ServiceErrors;->addErrors(Lcom/google/gdata/data/batch/BatchStatus;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ServiceException;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/ServiceErrors;->addErrors(Lcom/google/gdata/util/ServiceException;)V

    .line 86
    return-void
.end method

.method private addErrors(Ljava/lang/String;Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 133
    if-nez p3, :cond_0

    .line 134
    new-instance v0, Lcom/google/api/gbase/client/ServiceError;

    invoke-direct {v0, p1}, Lcom/google/api/gbase/client/ServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/ServiceErrors;->addError(Lcom/google/api/gbase/client/ServiceError;)V

    .line 167
    :goto_0
    return-void

    .line 138
    :cond_0
    if-nez p2, :cond_1

    .line 139
    sget-object p2, Lcom/google/api/gbase/client/ServiceErrors;->DEFAULT_CONTENT_TYPE:Lcom/google/gdata/util/ContentType;

    .line 142
    :cond_1
    invoke-virtual {p2}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :try_start_0
    new-instance v0, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser;-><init>()V

    .line 145
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/api/gbase/client/ServiceErrors$ErrorsElementHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/api/gbase/client/ServiceErrors$ErrorsElementHandler;-><init>(Lcom/google/api/gbase/client/ServiceErrors;Lcom/google/api/gbase/client/ServiceErrors$1;)V

    const-string/jumbo v3, ""

    const-string/jumbo v4, "errors"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 150
    invoke-direct {p0, p1, p3}, Lcom/google/api/gbase/client/ServiceErrors;->addInvalidXmlServiceError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 155
    invoke-direct {p0, p1, p3}, Lcom/google/api/gbase/client/ServiceErrors;->addInvalidXmlServiceError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p2}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {v0, p3}, Lcom/google/gdata/data/HtmlTextConstruct;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/google/api/gbase/client/ServiceError;

    invoke-virtual {v0}, Lcom/google/gdata/data/HtmlTextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/api/gbase/client/ServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/api/gbase/client/ServiceErrors;->addError(Lcom/google/api/gbase/client/ServiceError;)V

    goto :goto_0

    .line 165
    :cond_3
    new-instance v0, Lcom/google/api/gbase/client/ServiceError;

    invoke-direct {v0, p3}, Lcom/google/api/gbase/client/ServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/ServiceErrors;->addError(Lcom/google/api/gbase/client/ServiceError;)V

    goto :goto_0
.end method

.method private addInvalidXmlServiceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/google/api/gbase/client/ServiceError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(badly formatted xml error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/gbase/client/ServiceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/ServiceErrors;->addError(Lcom/google/api/gbase/client/ServiceError;)V

    .line 184
    return-void
.end method

.method private static appendErrors(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/ServiceError;

    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    const-string/jumbo v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/gbase/client/ServiceError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method private static equalsMaybeNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 269
    if-nez p0, :cond_1

    .line 270
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addError(Lcom/google/api/gbase/client/ServiceError;)V
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "data"

    invoke-virtual {p1}, Lcom/google/api/gbase/client/ServiceError;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addErrors(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/gdata/data/batch/BatchStatus;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/data/batch/BatchStatus;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/data/batch/BatchStatus;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/gbase/client/ServiceErrors;->addErrors(Ljava/lang/String;Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public addErrors(Lcom/google/gdata/util/ServiceException;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/gbase/client/ServiceErrors;->addErrors(Ljava/lang/String;Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public getAllErrors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    return-object v0
.end method

.method public getDataErrors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    return-object v0
.end method

.method public getErrorFields()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 238
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/ServiceError;

    .line 239
    invoke-virtual {v0}, Lcom/google/api/gbase/client/ServiceError;->getField()Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    return-object v1
.end method

.method public getFieldErrors(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/ServiceError;

    .line 258
    invoke-virtual {v0}, Lcom/google/api/gbase/client/ServiceError;->getField()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/api/gbase/client/ServiceErrors;->equalsMaybeNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    move-object v1, v0

    .line 264
    goto :goto_0

    .line 265
    :cond_2
    return-object v1
.end method

.method public getRequestErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/ServiceError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors;->requestErrors:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/ServiceErrors;->appendErrors(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 64
    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors;->dataErrors:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/ServiceErrors;->appendErrors(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
