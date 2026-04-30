.class Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "BaseFeed.java"


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;->this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;Lcom/google/gdata/data/BaseFeed$1;)V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;-><init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;->this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 974
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTotalResults:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 979
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->logoValueRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 984
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;->this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->totalResultsNotInteger:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
.end method
