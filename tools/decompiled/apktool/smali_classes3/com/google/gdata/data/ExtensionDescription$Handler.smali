.class public Lcom/google/gdata/data/ExtensionDescription$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "ExtensionDescription.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/ExtensionDescription;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionDescription;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/util/List;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription$Handler;->this$0:Lcom/google/gdata/data/ExtensionDescription;

    .line 318
    const-class v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 320
    const-string/jumbo v0, ""

    const-string/jumbo v3, "namespace"

    invoke-interface {p5, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    if-nez v3, :cond_0

    .line 322
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingNamespace:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 328
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 329
    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 331
    :cond_2
    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$002(Lcom/google/gdata/data/ExtensionDescription;Lcom/google/gdata/util/common/xml/XmlNamespace;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 335
    :cond_3
    invoke-static {p1}, Lcom/google/gdata/data/ExtensionDescription;->access$000(Lcom/google/gdata/data/ExtensionDescription;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    if-nez v0, :cond_4

    .line 336
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingNamespaceDescription:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No matching NamespaceDescription for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 340
    throw v0

    .line 343
    :cond_4
    const-string/jumbo v0, ""

    const-string/jumbo v3, "localName"

    invoke-interface {p5, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$102(Lcom/google/gdata/data/ExtensionDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/google/gdata/data/ExtensionDescription;->access$100(Lcom/google/gdata/data/ExtensionDescription;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 345
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingLocalName:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 349
    :cond_5
    const-string/jumbo v0, ""

    const-string/jumbo v3, "extensionClass"

    invoke-interface {p5, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    if-nez v3, :cond_6

    .line 351
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingExtensionClass:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 355
    :cond_6
    :try_start_0
    invoke-virtual {p3, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 356
    const-class v4, Lcom/google/gdata/data/Extension;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 357
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->mustImplementExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantLoadExtensionClass:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to load extensionClass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 366
    throw v1

    .line 360
    :cond_7
    :try_start_1
    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$202(Lcom/google/gdata/data/ExtensionDescription;Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    const-string/jumbo v0, "required"

    invoke-virtual {p0, p5, v0}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$302(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 372
    const-string/jumbo v0, "repeatable"

    invoke-virtual {p0, p5, v0}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$402(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 375
    const-string/jumbo v0, "aggregate"

    invoke-virtual {p0, p5, v0}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$502(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 378
    const-string/jumbo v0, "arbitraryXml"

    invoke-virtual {p0, p5, v0}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-static {p1, v0}, Lcom/google/gdata/data/ExtensionDescription;->access$602(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 381
    const-string/jumbo v0, "mixedContent"

    invoke-virtual {p0, p5, v0}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_4
    invoke-static {p1, v1}, Lcom/google/gdata/data/ExtensionDescription;->access$702(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 383
    return-void

    :cond_8
    move v0, v2

    .line 370
    goto :goto_0

    :cond_9
    move v0, v2

    .line 373
    goto :goto_1

    :cond_a
    move v0, v2

    .line 376
    goto :goto_2

    :cond_b
    move v0, v2

    .line 379
    goto :goto_3

    :cond_c
    move v1, v2

    .line 382
    goto :goto_4
.end method
