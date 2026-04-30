.class Lcom/google/gdata/data/extensions/EntryLink$Handler;
.super Lcom/google/gdata/data/Link$AtomHandler;
.source "EntryLink.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/EntryLink;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/EntryLink;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    .line 148
    const-class v0, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const-string/jumbo v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionProfile;->getEntryLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    move-object v1, v0

    .line 177
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/EntryLink;->entryClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    iput-object v0, v2, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    new-instance v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    iget-object v2, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v2, v2, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 189
    :goto_1
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 189
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "readOnly"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    const-string/jumbo v1, "true"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/gdata/data/extensions/EntryLink;->readOnly:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
