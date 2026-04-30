.class public Lcom/google/gdata/client/Service$ClientInputProperties;
.super Lcom/google/gdata/client/Service$ClientStreamProperties;
.source "Service.java"

# interfaces
.implements Lcom/google/gdata/wireformats/input/InputProperties;


# instance fields
.field private elementMetadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private final expectType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final inputType:Lcom/google/gdata/util/ContentType;

.field final synthetic this$0:Lcom/google/gdata/client/Service;


# direct methods
.method protected constructor <init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->this$0:Lcom/google/gdata/client/Service;

    .line 1933
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/client/Service$ClientStreamProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;)V

    .line 1934
    iput-object p3, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->expectType:Ljava/lang/Class;

    .line 1935
    invoke-interface {p2}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->inputType:Lcom/google/gdata/util/ContentType;

    .line 1936
    invoke-direct {p0}, Lcom/google/gdata/client/Service$ClientInputProperties;->init()V

    .line 1937
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/ContentType;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-direct {p0, p1}, Lcom/google/gdata/client/Service$ClientStreamProperties;-><init>(Lcom/google/gdata/client/Service;)V

    .line 1941
    iput-object p3, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->expectType:Ljava/lang/Class;

    .line 1942
    iput-object p2, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->inputType:Lcom/google/gdata/util/ContentType;

    .line 1943
    invoke-direct {p0}, Lcom/google/gdata/client/Service$ClientInputProperties;->init()V

    .line 1944
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 1947
    const-class v0, Lcom/google/gdata/model/Element;

    iget-object v1, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->expectType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->expectType:Ljava/lang/Class;

    const-class v1, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/model/Element;->getDefaultKey(Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 1950
    iget-object v1, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->this$0:Lcom/google/gdata/client/Service;

    invoke-virtual {v1}, Lcom/google/gdata/client/Service;->getSchema()Lcom/google/gdata/model/Schema;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gdata/client/Service$ClientInputProperties;->getMetadataContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 1954
    :goto_0
    return-void

    .line 1952
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->inputType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getRootMetadata()Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    return-object v0
.end method

.method public getRootType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/google/gdata/client/Service$ClientInputProperties;->expectType:Ljava/lang/Class;

    return-object v0
.end method

.method public isPartial()Z
    .locals 1

    .prologue
    .line 1970
    const-string/jumbo v0, "fields"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/Service$ClientInputProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
