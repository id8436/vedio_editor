.class Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;
.super Ljava/lang/Object;
.source "ClipLibraryManager.java"


# instance fields
.field completionCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/premiereclip/looks/CandyLook;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field errorCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Lcom/adobe/premiereclip/library/ClipLibraryManager$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/premiereclip/looks/CandyLook;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 84
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    .line 110
    return-void
.end method

.method getRequestCount(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 115
    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method removeRequests(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method sendResult(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/premiereclip/looks/CandyLook;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 2

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->completionCallbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    .line 132
    invoke-interface {v0, p2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->errorCallbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 139
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    .line 142
    invoke-interface {v0, p3}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->removeRequests(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 148
    return-void
.end method
