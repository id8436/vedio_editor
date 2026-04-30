.class public Lorg/mortbay/servlet/UserAgentFilter;
.super Ljava/lang/Object;
.source "UserAgentFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# instance fields
.field private _agentCache:Ljava/util/Map;

.field private _agentCacheSize:I

.field private _attribute:Ljava/lang/String;

.field private _pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    .line 56
    const/16 v0, 0x400

    iput v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCacheSize:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_attribute:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_pattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lorg/mortbay/servlet/UserAgentFilter;->getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lorg/mortbay/servlet/UserAgentFilter;->_attribute:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 79
    return-void
.end method

.method public getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 152
    :goto_0
    return-object v1

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-nez v0, :cond_7

    .line 126
    iget-object v1, p0, Lorg/mortbay/servlet/UserAgentFilter;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 131
    const/4 v1, 0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-gt v0, v2, :cond_4

    .line 133
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    if-nez v1, :cond_2

    move-object v1, v2

    .line 131
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 135
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    monitor-enter v2

    .line 146
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v3, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCacheSize:I

    if-lt v0, v3, :cond_5

    .line 147
    iget-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    :cond_5
    iget-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    move-object v1, p1

    .line 142
    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_0
.end method

.method public getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    const-string/jumbo v0, "User-Agent"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/UserAgentFilter;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 87
    const-string/jumbo v0, "attribute"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_attribute:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "userAgent"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_pattern:Ljava/util/regex/Pattern;

    .line 93
    :cond_0
    const-string/jumbo v0, "cacheSize"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCacheSize:I

    .line 96
    :cond_1
    return-void
.end method
