.class public Lorg/mortbay/util/ajax/JSONPojoConvertor;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# static fields
.field public static final DOUBLE:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field public static final FLOAT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field public static final GETTER_ARG:[Ljava/lang/Object;

.field public static final INTEGER:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field public static final LONG:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field public static final NULL_ARG:[Ljava/lang/Object;

.field public static final SHORT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field private static final __numberTypes:Ljava/util/Map;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;


# instance fields
.field protected _excluded:Ljava/util/Set;

.field protected _fromJSON:Z

.field protected _getters:Ljava/util/Map;

.field protected _pojoClass:Ljava/lang/Class;

.field protected _setters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->NULL_ARG:[Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    .line 361
    new-instance v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$1;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor$1;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->SHORT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 369
    new-instance v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$2;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor$2;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 377
    new-instance v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$3;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor$3;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 385
    new-instance v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$4;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor$4;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->LONG:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 393
    new-instance v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$5;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor$5;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 403
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Short:Ljava/lang/Class;

    :goto_0
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->SHORT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->SHORT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_1
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Long:Ljava/lang/Class;

    :goto_2
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->LONG:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->LONG:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Float:Ljava/lang/Class;

    :goto_3
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Double:Ljava/lang/Class;

    :goto_4
    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/mortbay/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-void

    .line 403
    :cond_0
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_0

    .line 405
    :cond_1
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Integer:Ljava/lang/Class;

    goto :goto_1

    .line 407
    :cond_2
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_2

    .line 409
    :cond_3
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_3

    .line 411
    :cond_4
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;Z)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    .line 91
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    .line 92
    iput-object p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    .line 93
    iput-boolean p3, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    .line 94
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 73
    return-void
.end method

.method static access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 113
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

.method public static getNumberType(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    return-object v0
.end method


# virtual methods
.method protected addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method protected addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    new-instance v1, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;

    invoke-direct {v1, p1, p2}, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 178
    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->setProps(Ljava/lang/Object;Ljava/util/Map;)I

    .line 189
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getExcludedCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getSetter(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;

    return-object v0
.end method

.method protected includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

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

.method protected init()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 109
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 110
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_3

    .line 112
    aget-object v3, v2, v0

    .line 113
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string/jumbo v1, "java.lang.Object"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    if-eq v4, v1, :cond_0

    .line 115
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    packed-switch v4, :pswitch_data_0

    .line 110
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 120
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 122
    const-string/jumbo v4, "is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 123
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_3
    invoke-virtual {p0, v1, v3}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {p0, v1, v3}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 124
    :cond_2
    const-string/jumbo v4, "get"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 125
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 133
    :pswitch_1
    const-string/jumbo v4, "set"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 135
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v1, v3}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {p0, v1, v3}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto/16 :goto_2

    .line 143
    :cond_3
    return-void

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 245
    invoke-static {p1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method public setProps(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 6

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->getSetter(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_1
    move v2, v0

    .line 215
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 210
    const-string/jumbo v4, "{} property \'{}\' not set. (errors)"

    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    :cond_0
    move v0, v2

    goto :goto_1

    .line 216
    :cond_1
    return v2
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 5

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-interface {p2, v0}, Lorg/mortbay/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mortbay/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 235
    const-string/jumbo v2, "{} property \'{}\' excluded. (errors)"

    iget-object v4, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0, v1}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method
