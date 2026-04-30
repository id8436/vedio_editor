.class public Lorg/mortbay/util/IntrospectionUtil;
.super Ljava/lang/Object;
.source "IntrospectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move v1, v2

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    .line 148
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    .line 151
    :cond_3
    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    .line 154
    array-length v0, p0

    if-nez v0, :cond_4

    move v1, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_4
    if-eqz p2, :cond_6

    move v0, v1

    .line 160
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_5

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_5

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 171
    :cond_5
    array-length v3, p0

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 176
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public static containsSameFieldName(Ljava/lang/reflect/Field;Ljava/lang/Class;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 237
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    :goto_0
    return v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move v1, v0

    .line 245
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 247
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const/4 v1, 0x1

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public static containsSameMethodSignature(Ljava/lang/reflect/Method;Ljava/lang/Class;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 218
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move v1, v0

    .line 226
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 228
    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lorg/mortbay/util/IntrospectionUtil;->isSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const/4 v1, 0x1

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v1, "No field name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 94
    if-eqz p4, :cond_3

    .line 96
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    :cond_2
    :goto_0
    return-object v0

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_4
    if-eqz p3, :cond_5

    .line 106
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p4}, Lorg/mortbay/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No field with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p4}, Lorg/mortbay/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method protected static findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    if-nez p2, :cond_1

    .line 286
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v1, "No field name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 290
    invoke-static {p0, v0}, Lorg/mortbay/util/IntrospectionUtil;->isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v1, p4}, Lorg/mortbay/util/IntrospectionUtil;->isTypeCompatible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :goto_0
    return-object v0

    .line 293
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lorg/mortbay/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lorg/mortbay/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method protected static findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    if-nez p2, :cond_1

    .line 261
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v1, "No method name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 265
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    if-nez v0, :cond_3

    .line 267
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    invoke-static {p0, v3}, Lorg/mortbay/util/IntrospectionUtil;->isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lorg/mortbay/util/IntrospectionUtil;->checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    aget-object v0, v2, v1

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_3
    if-eqz v0, :cond_4

    .line 277
    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lorg/mortbay/util/IntrospectionUtil;->findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;ZZ)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v1, "No method name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v2

    .line 60
    :goto_0
    array-length v3, v4

    if-ge v1, v3, :cond_5

    if-nez v0, :cond_5

    .line 62
    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    if-nez p2, :cond_4

    new-array v3, v2, [Ljava/lang/Class;

    :goto_1
    invoke-static {v5, v3, p4}, Lorg/mortbay/util/IntrospectionUtil;->checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    aget-object v0, v4, v1

    .line 60
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v3, p2

    .line 62
    goto :goto_1

    .line 68
    :cond_5
    if-eqz v0, :cond_6

    .line 73
    :goto_2
    return-object v0

    .line 72
    :cond_6
    if-eqz p3, :cond_7

    .line 73
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p4}, Lorg/mortbay/util/IntrospectionUtil;->findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_2

    .line 75
    :cond_7
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No such method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    .line 129
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public static isJavaBeanCompliantSetter(Ljava/lang/reflect/Method;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public static isSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 182
    if-nez p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 190
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTypeCompatible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 204
    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_3
    if-eqz p2, :cond_4

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
