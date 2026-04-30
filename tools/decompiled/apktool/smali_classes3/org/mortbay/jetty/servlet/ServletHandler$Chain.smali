.class Lorg/mortbay/jetty/servlet/ServletHandler$Chain;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Ljavax/servlet/FilterChain;


# instance fields
.field _chain:Ljava/lang/Object;

.field _filter:I

.field _servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 1

    .prologue
    .line 1247
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    .line 1248
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    .line 1249
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 1250
    return-void
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "doFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1261
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    iget v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 1262
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "call filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1263
    :cond_1
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v0

    .line 1264
    invoke-interface {v0, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 1276
    :goto_0
    return-void

    .line 1269
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_4

    .line 1271
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "call servlet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1272
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 1275
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1281
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1282
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1284
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1285
    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1288
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
