.class public Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;
.super Ljava/lang/Object;
.source "JSONPojoConvertorFactory.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;


# instance fields
.field private final _fromJSON:Z

.field private final _json:Lorg/mortbay/util/ajax/JSON;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_fromJSON:Z

    .line 40
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;Z)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    .line 53
    iput-boolean p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_fromJSON:Z

    .line 54
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 68
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 89
    .line 90
    const-string/jumbo v0, "class"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 94
    if-nez v2, :cond_0

    .line 98
    :try_start_0
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string/jumbo v1, "org.mortbay.util.ajax.JSON"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 99
    new-instance v3, Lorg/mortbay/util/ajax/JSONPojoConvertor;

    invoke-direct {v3, v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v1, v0, v3}, Lorg/mortbay/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 107
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string/jumbo v1, "java.lang.Object"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-interface {v2, p1}, Lorg/mortbay/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    :cond_1
    return-object p1

    .line 98
    :cond_2
    :try_start_2
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 104
    :goto_3
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 107
    :cond_3
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_2

    .line 102
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 63
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, v3}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    .line 68
    :try_start_0
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.util.ajax.JSON"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, v3}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    new-instance v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;

    iget-boolean v4, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_fromJSON:Z

    invoke-direct {v2, v0, v4}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, v3, v2}, Lorg/mortbay/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 77
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    :goto_2
    if-eq v2, v0, :cond_3

    .line 79
    invoke-interface {v1, p1, p2}, Lorg/mortbay/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V

    .line 85
    :goto_3
    return-void

    .line 68
    :cond_1
    :try_start_2
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    :goto_4
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 77
    :cond_2
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 72
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method
