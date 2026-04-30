.class public Lorg/mortbay/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# static fields
.field public static CR:I

.field public static LF:I

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field private static final class2Name:Ljava/util/HashMap;

.field private static final class2Value:Ljava/util/HashMap;

.field private static intCacheSize:I

.field private static integerCache:[Ljava/lang/Integer;

.field private static integerStrCache:[Ljava/lang/String;

.field private static longCache:[Ljava/lang/Long;

.field private static longCacheSize:I

.field private static minusOne:Ljava/lang/Integer;

.field private static minusOneL:Ljava/lang/Long;

.field private static final name2Class:Ljava/util/HashMap;

.field private static stringArg:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    const/16 v0, 0xd

    sput v0, Lorg/mortbay/util/TypeUtil;->CR:I

    .line 39
    const/16 v0, 0xa

    sput v0, Lorg/mortbay/util/TypeUtil;->LF:I

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Boolean.TYPE"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Byte.TYPE"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Character.TYPE"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Double.TYPE"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Float.TYPE"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Integer.TYPE"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Long.TYPE"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Short.TYPE"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v1, "java.lang.Void.TYPE"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Boolean"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Byte"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Character"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Double"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Float"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Integer"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Long"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    :goto_6
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.Short"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    :goto_7
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Boolean"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_8
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Byte"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_9
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Character"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    :goto_a
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Double"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    :goto_b
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Float"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Integer"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_d
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Long"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "Short"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    :goto_f
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "string"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_10
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "String"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_11

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_11
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string/jumbo v2, "java.lang.String"

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_12
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    .line 93
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "int"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "void"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_13
    const-string/jumbo v2, "java.lang.Boolean"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_14

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_14
    const-string/jumbo v2, "java.lang.Byte"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    :goto_15
    const-string/jumbo v2, "java.lang.Character"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    :goto_16
    const-string/jumbo v2, "java.lang.Double"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    :goto_17
    const-string/jumbo v2, "java.lang.Float"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_18
    const-string/jumbo v2, "java.lang.Integer"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    :goto_19
    const-string/jumbo v2, "java.lang.Long"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    :goto_1a
    const-string/jumbo v2, "java.lang.Short"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_1b
    const-string/jumbo v2, "java.lang.String"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    .line 122
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_1c
    aput-object v0, v2, v1

    .line 124
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_1d
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_1e

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_1e
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_1f

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    :goto_1f
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_20

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    :goto_20
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_21

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_21
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_22

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    :goto_22
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_23

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    :goto_23
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_24

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    move-object v1, v0

    :goto_24
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_25

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_25
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_26

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    move-object v1, v0

    :goto_26
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_27

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_27
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_28

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    move-object v1, v0

    :goto_28
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_29

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    :goto_29
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_2a

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    move-object v1, v0

    :goto_2a
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_2b

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    :goto_2b
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_2c

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    move-object v1, v0

    :goto_2c
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_2d

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_2d
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    move-object v1, v0

    :goto_2e
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_2f

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    :goto_2f
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v3, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_30

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    move-object v1, v0

    :goto_30
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_31

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    :goto_31
    const-string/jumbo v4, "valueOf"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_32
    new-array v1, v6, [Ljava/lang/Class;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_32

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_33
    aput-object v0, v1, v5

    sput-object v1, Lorg/mortbay/util/TypeUtil;->stringArg:[Ljava/lang/Class;

    .line 164
    const-string/jumbo v0, "org.mortbay.util.TypeUtil.IntegerCacheSize"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/util/TypeUtil;->intCacheSize:I

    .line 166
    sget v0, Lorg/mortbay/util/TypeUtil;->intCacheSize:I

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lorg/mortbay/util/TypeUtil;->integerCache:[Ljava/lang/Integer;

    .line 167
    sget v0, Lorg/mortbay/util/TypeUtil;->intCacheSize:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->minusOne:Ljava/lang/Integer;

    .line 169
    const-string/jumbo v0, "org.mortbay.util.TypeUtil.LongCacheSize"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/util/TypeUtil;->longCacheSize:I

    .line 171
    sget v0, Lorg/mortbay/util/TypeUtil;->longCacheSize:I

    new-array v0, v0, [Ljava/lang/Long;

    sput-object v0, Lorg/mortbay/util/TypeUtil;->longCache:[Ljava/lang/Long;

    .line 172
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->minusOneL:Ljava/lang/Long;

    return-void

    .line 65
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    .line 66
    :cond_1
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_1

    .line 67
    :cond_2
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_2

    .line 68
    :cond_3
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_3

    .line 69
    :cond_4
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_4

    .line 70
    :cond_5
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_5

    .line 71
    :cond_6
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_6

    .line 72
    :cond_7
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_7

    .line 74
    :cond_8
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_8

    .line 75
    :cond_9
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_9

    .line 76
    :cond_a
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_a

    .line 77
    :cond_b
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_b

    .line 78
    :cond_c
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_c

    .line 79
    :cond_d
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_d

    .line 80
    :cond_e
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_e

    .line 81
    :cond_f
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_f

    .line 84
    :cond_10
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_10

    .line 85
    :cond_11
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_11

    .line 86
    :cond_12
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_12

    .line 103
    :cond_13
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_13

    .line 104
    :cond_14
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_14

    .line 105
    :cond_15
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_15

    .line 106
    :cond_16
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_16

    .line 107
    :cond_17
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_17

    .line 108
    :cond_18
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_18

    .line 109
    :cond_19
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_19

    .line 110
    :cond_1a
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_1a

    .line 113
    :cond_1b
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_1b

    .line 122
    :cond_1c
    :try_start_1
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_1c

    .line 124
    :cond_1d
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_1d

    .line 126
    :cond_1e
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_1e

    .line 128
    :cond_1f
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_1f

    .line 130
    :cond_20
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_20

    .line 132
    :cond_21
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_21

    .line 134
    :cond_22
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_22

    .line 136
    :cond_23
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_23

    .line 139
    :cond_24
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_24

    :cond_25
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_25

    .line 141
    :cond_26
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_26

    :cond_27
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_27

    .line 143
    :cond_28
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_28

    :cond_29
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_29

    .line 145
    :cond_2a
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_2a

    :cond_2b
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_2b

    .line 147
    :cond_2c
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_2c

    :cond_2d
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_2d

    .line 149
    :cond_2e
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_2e

    :cond_2f
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_2f

    .line 151
    :cond_30
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;

    move-object v1, v0

    goto/16 :goto_30

    :cond_31
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Short:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_31

    .line 154
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_32

    .line 161
    :cond_32
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_33
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 65
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

.method public static convertHexDigit(B)B
    .locals 1

    .prologue
    .line 421
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 424
    :goto_0
    return v0

    .line 422
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 423
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 424
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dump(Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 482
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->dump(Ljava/lang/ClassLoader;)V

    .line 484
    return-void
.end method

.method public static dump(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 488
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Dump Loaders:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    :goto_0
    if-eqz p0, :cond_0

    .line 491
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "  loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 471
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 473
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 474
    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return-object v1
.end method

.method public static fromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lorg/mortbay/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static jarFor(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 552
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 556
    const-string/jumbo v0, "jar:file:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/net/URL;

    const/4 v3, 0x4

    const-string/jumbo v4, "!/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-object v0

    .line 559
    :catch_0
    move-exception v0

    .line 561
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 563
    goto :goto_0
.end method

.method public static newInteger(I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 255
    if-ltz p0, :cond_1

    sget v0, Lorg/mortbay/util/TypeUtil;->intCacheSize:I

    if-ge p0, v0, :cond_1

    .line 257
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerCache:[Ljava/lang/Integer;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerCache:[Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, p0

    .line 259
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerCache:[Ljava/lang/Integer;

    aget-object v0, v0, p0

    .line 263
    :goto_0
    return-object v0

    .line 261
    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 262
    sget-object v0, Lorg/mortbay/util/TypeUtil;->minusOne:Ljava/lang/Integer;

    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public static newLong(J)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget v0, Lorg/mortbay/util/TypeUtil;->longCacheSize:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 273
    sget-object v0, Lorg/mortbay/util/TypeUtil;->longCache:[Ljava/lang/Long;

    long-to-int v1, p0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Lorg/mortbay/util/TypeUtil;->longCache:[Ljava/lang/Long;

    long-to-int v1, p0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    .line 275
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->longCache:[Ljava/lang/Long;

    long-to-int v1, p0

    aget-object v0, v0, v1

    .line 279
    :goto_0
    return-object v0

    .line 277
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 278
    sget-object v0, Lorg/mortbay/util/TypeUtil;->minusOneL:Ljava/lang/Long;

    goto :goto_0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public static parseBytes(Ljava/lang/String;I)[B
    .locals 4

    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 390
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 391
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    invoke-static {p0, v0, v3, p1}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 390
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 392
    :cond_0
    return-object v1
.end method

.method public static parseInt(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 328
    .line 330
    if-gez p2, :cond_0

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int p2, v1, p1

    :cond_0
    move v1, v0

    move v2, v0

    .line 333
    :goto_0
    if-ge v1, p2, :cond_6

    .line 335
    add-int v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 337
    add-int/lit8 v0, v3, -0x30

    .line 338
    if-ltz v0, :cond_1

    if-ge v0, p3, :cond_1

    if-lt v0, v4, :cond_3

    .line 340
    :cond_1
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x41

    .line 341
    if-lt v0, v4, :cond_2

    if-lt v0, p3, :cond_3

    .line 342
    :cond_2
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x61

    .line 344
    :cond_3
    if-ltz v0, :cond_4

    if-lt v0, p3, :cond_5

    .line 345
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_5
    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    .line 333
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 348
    :cond_6
    return v2
.end method

.method public static parseInt([BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 363
    .line 365
    if-gez p2, :cond_0

    .line 366
    array-length v1, p0

    sub-int p2, v1, p1

    :cond_0
    move v1, v0

    move v2, v0

    .line 368
    :goto_0
    if-ge v1, p2, :cond_6

    .line 370
    add-int v0, p1, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v3, v0

    .line 372
    add-int/lit8 v0, v3, -0x30

    .line 373
    if-ltz v0, :cond_1

    if-ge v0, p3, :cond_1

    if-lt v0, v4, :cond_3

    .line 375
    :cond_1
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x41

    .line 376
    if-lt v0, v4, :cond_2

    if-lt v0, p3, :cond_3

    .line 377
    :cond_2
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x61

    .line 379
    :cond_3
    if-ltz v0, :cond_4

    if-lt v0, p3, :cond_5

    .line 380
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_5
    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    .line 368
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 383
    :cond_6
    return v2
.end method

.method public static readLine(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 500
    const/16 v0, 0x100

    new-array v0, v0, [B

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 508
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 509
    if-gez v5, :cond_2

    .line 529
    :cond_1
    const/4 v0, -0x1

    if-ne v5, v0, :cond_4

    if-nez v2, :cond_4

    .line 530
    const/4 v0, 0x0

    .line 545
    :goto_1
    return-object v0

    .line 511
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 514
    if-ne v0, v7, :cond_3

    sget v4, Lorg/mortbay/util/TypeUtil;->LF:I

    if-eq v5, v4, :cond_0

    .line 517
    :cond_3
    sget v4, Lorg/mortbay/util/TypeUtil;->CR:I

    if-eq v5, v4, :cond_1

    sget v4, Lorg/mortbay/util/TypeUtil;->LF:I

    if-eq v5, v4, :cond_1

    .line 520
    array-length v4, v3

    if-lt v2, v4, :cond_6

    .line 523
    array-length v4, v3

    add-int/lit16 v4, v4, 0x100

    new-array v4, v4, [B

    .line 524
    array-length v6, v3

    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    :goto_2
    add-int/lit8 v3, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    .line 533
    :cond_4
    sget v0, Lorg/mortbay/util/TypeUtil;->CR:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lt v0, v7, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 536
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 537
    sget v4, Lorg/mortbay/util/TypeUtil;->LF:I

    if-eq v0, v4, :cond_5

    .line 538
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 542
    :cond_5
    new-array v0, v2, [B

    .line 543
    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    move-object v4, v3

    goto :goto_2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 430
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 433
    aget-byte v1, p0, v0

    and-int/lit16 v3, v1, 0xff

    .line 434
    div-int/lit8 v1, v3, 0x10

    rem-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x30

    .line 435
    if-le v1, v4, :cond_0

    .line 436
    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v1, v1, 0x41

    .line 437
    :cond_0
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    rem-int/lit8 v1, v3, 0x10

    add-int/lit8 v1, v1, 0x30

    .line 439
    if-le v1, v4, :cond_1

    .line 440
    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v1, v1, 0x61

    .line 441
    :cond_1
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 449
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    .line 450
    :goto_0
    add-int v0, p1, p2

    if-ge v1, v0, :cond_2

    .line 452
    aget-byte v0, p0, v1

    and-int/lit16 v3, v0, 0xff

    .line 453
    div-int/lit8 v0, v3, 0x10

    rem-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x30

    .line 454
    if-le v0, v4, :cond_0

    .line 455
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x41

    .line 456
    :cond_0
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    rem-int/lit8 v0, v3, 0x10

    add-int/lit8 v0, v0, 0x30

    .line 458
    if-le v0, v4, :cond_1

    .line 459
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 460
    :cond_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    if-ltz p0, :cond_1

    sget v0, Lorg/mortbay/util/TypeUtil;->intCacheSize:I

    if-ge p0, v0, :cond_1

    .line 290
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 292
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 296
    :goto_0
    return-object v0

    .line 294
    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 295
    const-string/jumbo v0, "-1"

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget v0, Lorg/mortbay/util/TypeUtil;->intCacheSize:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 306
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    long-to-int v1, p0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 307
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    long-to-int v1, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 308
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->integerStrCache:[Ljava/lang/String;

    long-to-int v1, p0

    aget-object v0, v0, v1

    .line 312
    :goto_0
    return-object v0

    .line 310
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 311
    const-string/jumbo v0, "-1"

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 398
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 401
    aget-byte v1, p0, v0

    and-int/lit16 v3, v1, 0xff

    .line 402
    div-int v1, v3, p1

    rem-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x30

    .line 403
    if-le v1, v4, :cond_0

    .line 404
    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v1, v1, 0x61

    .line 405
    :cond_0
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    rem-int v1, v3, p1

    add-int/lit8 v1, v1, 0x30

    .line 407
    if-le v1, v4, :cond_1

    .line 408
    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v1, v1, 0x61

    .line 409
    :cond_1
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 204
    :try_start_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :goto_1
    return-object p1

    .line 204
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 208
    if-eqz v0, :cond_2

    .line 209
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 211
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    move-object p1, v0

    goto :goto_1

    .line 211
    :cond_4
    sget-object v0, Lorg/mortbay/util/TypeUtil;->class$java$lang$Character:Ljava/lang/Class;

    goto :goto_2

    .line 215
    :cond_5
    sget-object v0, Lorg/mortbay/util/TypeUtil;->stringArg:[Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 216
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Error;

    if-eqz v2, :cond_6

    .line 233
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 226
    :catch_1
    move-exception v0

    :cond_6
    :goto_3
    move-object p1, v1

    .line 236
    goto :goto_1

    .line 222
    :catch_2
    move-exception v0

    goto :goto_3

    .line 218
    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-static {p0}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
