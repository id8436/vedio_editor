.class public Lorg/mortbay/util/ajax/JSONObjectConvertor;
.super Ljava/lang/Object;
.source "JSONObjectConvertor.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private _excluded:Ljava/util/Set;

.field private _fromJSON:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_excluded:Ljava/util/Set;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_fromJSON:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_excluded:Ljava/util/Set;

    .line 45
    iput-boolean p1, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_fromJSON:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_excluded:Ljava/util/Set;

    .line 55
    iput-boolean p1, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_fromJSON:Z

    .line 56
    if-eqz p2, :cond_0

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_excluded:Ljava/util/Set;

    .line 58
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 84
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
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 64
    :cond_0
    return-object p1
.end method

.method protected includeField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_excluded:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 7

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/mortbay/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 78
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_4

    .line 80
    aget-object v4, v3, v2

    .line 81
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONObjectConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    if-eq v1, v0, :cond_1

    .line 86
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 94
    :goto_2
    invoke-virtual {p0, v1, p1, v4}, Lorg/mortbay/util/ajax/JSONObjectConvertor;->includeField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lorg/mortbay/util/ajax/JSONObjectConvertor;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 89
    :cond_3
    const-string/jumbo v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Illegal argument"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :cond_4
    return-void
.end method
