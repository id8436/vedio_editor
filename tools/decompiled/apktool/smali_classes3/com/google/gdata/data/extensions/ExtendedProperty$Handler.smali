.class Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "ExtendedProperty.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/ExtendedProperty;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    .line 175
    const-class v0, Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 176
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/ExtendedProperty;->name:Ljava/lang/String;

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/ExtendedProperty;->val:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v0, "realm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/ExtendedProperty;->realm:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/ExtendedProperty;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->nameRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/ExtendedProperty;->getXmlBlob()Lcom/google/gdata/util/XmlBlob;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    iget-object v1, v1, Lcom/google/gdata/data/extensions/ExtendedProperty;->val:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->valueXmlMutuallyExclusive:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/extensions/ExtendedProperty$Handler;->this$0:Lcom/google/gdata/data/extensions/ExtendedProperty;

    iget-object v1, v1, Lcom/google/gdata/data/extensions/ExtendedProperty;->val:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->valueOrXmlRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 212
    :cond_2
    return-void
.end method
