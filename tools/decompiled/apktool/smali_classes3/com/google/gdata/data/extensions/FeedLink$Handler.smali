.class Lcom/google/gdata/data/extensions/FeedLink$Handler;
.super Lcom/google/gdata/data/Link$AtomHandler;
.source "FeedLink.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/FeedLink;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/FeedLink;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    .line 156
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 157
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
    .line 187
    const-string/jumbo v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v0, "feed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionProfile;->getFeedLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    move-object v1, v0

    .line 194
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/FeedLink;->feedClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    iput-object v0, v2, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    iget-object v2, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v2, v2, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 206
    :goto_1
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 198
    :catch_1
    move-exception v0

    .line 199
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 164
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "readOnly"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    const-string/jumbo v1, "true"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/gdata/data/extensions/FeedLink;->readOnly:Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string/jumbo v0, "countHint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/FeedLink;->countHint:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidCountHintAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
