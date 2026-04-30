.class public Lcom/google/gdata/util/common/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CJK_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_MATCHER:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final UNSAFE_TAGS:[Ljava/lang/String;

.field public static final WHITE_SPACES:Ljava/lang/String; = " \r\n\t\u3000\u00a0\u2007\u202f"

.field private static final characterReferencePattern:Ljava/util/regex/Pattern;

.field private static final dbSpecPattern:Ljava/util/regex/Pattern;

.field static escapeStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static hexChars:[C

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xfc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    const-class v0, Lcom/google/gdata/util/common/base/StringUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/util/common/base/StringUtil;->$assertionsDisabled:Z

    .line 57
    const-string/jumbo v0, "</?[a-zA-Z][^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    .line 60
    const-string/jumbo v0, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    .line 63
    const-string/jumbo v0, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    .line 866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    .line 868
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&nbsp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&iexcl;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&cent;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&pound;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&curren;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&yen;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&brvbar;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sect;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&uml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&copy;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xa9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ordf;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xaa

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&laquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xab

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&not;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xac

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&shy;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xad

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&reg;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xae

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&macr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xaf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&deg;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&plusmn;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sup2;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sup3;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&acute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&micro;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&para;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&middot;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&cedil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sup1;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xb9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ordm;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xba

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&raquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&frac14;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&frac12;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&frac34;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbe

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&iquest;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xbf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Agrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Aacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Acirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Atilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Auml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Aring;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&AElig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ccedil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Egrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Eacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xc9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ecirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xca

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Euml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Igrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Iacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Icirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xce

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Iuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xcf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ETH;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ntilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ograve;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Oacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ocirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Otilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ouml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&times;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Oslash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ugrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xd9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Uacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xda

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Ucirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Uuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Yacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&THORN;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xde

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&szlig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xdf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&agrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&aacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&acirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&atilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&auml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&aring;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&aelig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ccedil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&egrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&eacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xe9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ecirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xea

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&euml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xeb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&igrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xec

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&iacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xed

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&icirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xee

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&iuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xef

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&eth;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ntilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ograve;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&oacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ocirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&otilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ouml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&divide;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&oslash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ugrave;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xf9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&uacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfa

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ucirc;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&uuml;"

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, v6}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&yacute;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&thorn;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xfe

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&yuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&fnof;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x192

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Alpha;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x391

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Beta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x392

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Gamma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x393

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Delta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x394

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Epsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x395

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Zeta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x396

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Eta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x397

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Theta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x398

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Iota;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x399

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Kappa;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Lambda;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Mu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Nu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Xi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Omicron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x39f

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Pi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Rho;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Sigma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Tau;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Upsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Phi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Chi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Psi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Omega;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3a9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&alpha;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&beta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&gamma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&delta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&epsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&zeta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&eta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&theta;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&iota;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3b9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&kappa;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3ba

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lambda;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bb

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&mu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&nu;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bd

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&xi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3be

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&omicron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3bf

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&pi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rho;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sigmaf;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sigma;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&tau;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&upsilon;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&phi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&chi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c7

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&psi;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c8

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&omega;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c9

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&thetasym;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3d1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&upsih;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3d2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&piv;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3d6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&bull;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2022

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&hellip;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2026

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&prime;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2032

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Prime;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2033

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&oline;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x203e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&frasl;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2044

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&weierp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2118

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&image;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2111

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&real;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x211c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&trade;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2122

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&alefsym;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2135

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&larr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2190

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&uarr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2191

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rarr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2192

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&darr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2193

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&harr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2194

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&crarr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21b5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d0

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&uArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d1

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d2

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&dArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d3

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&hArr;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x21d4

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&forall;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2200

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&part;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2202

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&exist;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2203

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&empty;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2205

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&nabla;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2207

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&isin;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2208

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&notin;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2209

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ni;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x220b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&prod;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x220f

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sum;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2211

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&minus;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2212

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lowast;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2217

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&radic;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x221a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&prop;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x221d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&infin;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x221e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ang;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2220

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&and;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2227

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&or;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2228

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&cap;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2229

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&cup;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x222a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&int;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x222b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&there4;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2234

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sim;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x223c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&cong;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2245

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&asymp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2248

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ne;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2260

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&equiv;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2261

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&le;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2264

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ge;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2265

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sub;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2282

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sup;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2283

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&nsub;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2284

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sube;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2286

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&supe;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2287

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&oplus;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2295

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&otimes;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2297

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&perp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x22a5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sdot;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x22c5

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lceil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2308

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rceil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2309

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lfloor;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x230a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rfloor;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x230b

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lang;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2329

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rang;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x232a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&loz;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x25ca

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&spades;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2660

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&clubs;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2663

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&hearts;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2665

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&diams;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2666

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&quot;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x22

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&amp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lt;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&gt;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x3e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&OElig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x152

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&oelig;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x153

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Scaron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x160

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&scaron;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x161

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Yuml;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x178

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&circ;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2c6

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&tilde;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2dc

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ensp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2002

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&emsp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2003

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&thinsp;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2009

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&zwnj;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&zwj;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lrm;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rlm;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x200f

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ndash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2013

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&mdash;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2014

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lsquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2018

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rsquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2019

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&sbquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&ldquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201c

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rdquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201d

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&bdquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x201e

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&dagger;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2020

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&Dagger;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2021

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&permil;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2030

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&lsaquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x2039

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&rsaquo;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x203a

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    const-string/jumbo v3, "&euro;"

    new-instance v4, Ljava/lang/Character;

    const/16 v5, 0x20ac

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "script"

    aput-object v3, v0, v2

    const-string/jumbo v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "object"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "!--"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->UNSAFE_TAGS:[Ljava/lang/String;

    .line 1459
    const-string/jumbo v0, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u000b\u000c\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff"

    invoke-static {v0}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 2340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2341
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2342
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2343
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2344
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2345
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2346
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2347
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2348
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2349
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2350
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2351
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2352
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2353
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2354
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2355
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2356
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2357
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2358
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2359
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2360
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2361
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2362
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 2684
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/gdata/util/common/base/StringUtil;->hexChars:[C

    return-void

    :cond_0
    move v0, v2

    .line 45
    goto/16 :goto_0

    .line 2684
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Collection2String(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1905
    if-nez p0, :cond_0

    .line 1906
    const/4 v0, 0x0

    .line 1908
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->Iterator2String(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static Iterator2String(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1918
    if-nez p0, :cond_0

    .line 1919
    const/4 v0, 0x0

    .line 1930
    :goto_0
    return-object v0

    .line 1922
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1925
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1930
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static allAscii(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 2283
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2284
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff80

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 2288
    :goto_1
    return v0

    .line 2283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2288
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V
    .locals 3

    .prologue
    .line 1321
    const-string/jumbo v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 1324
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    return-void
.end method

.method public static arrayMap2String(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2234
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2235
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2236
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 2237
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2241
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 2242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2243
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1

    .line 2244
    invoke-virtual {v5, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2241
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 2247
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {v5, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 2251
    :cond_3
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToEncoding([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2758
    if-nez p0, :cond_0

    .line 2759
    const/4 v0, 0x0

    .line 2763
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2764
    :catch_0
    move-exception v0

    .line 2765
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported! Original exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2691
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2700
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    if-nez p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2703
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2704
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 2705
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    .line 2706
    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2707
    :cond_0
    sget-object v4, Lcom/google/gdata/util/common/base/StringUtil;->hexChars:[C

    aget-char v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2708
    sget-object v2, Lcom/google/gdata/util/common/base/StringUtil;->hexChars:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2700
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 2710
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToLatin1([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2681
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->bytesToEncoding([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToStringList([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2802
    if-nez p0, :cond_0

    .line 2831
    :goto_0
    return-object v0

    .line 2809
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2820
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    .line 2821
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2820
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 2813
    :catch_0
    move-exception v0

    .line 2815
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2824
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2826
    :catch_1
    move-exception v0

    .line 2828
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2824
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static bytesToUtf8([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2739
    const-string/jumbo v0, "UTF8"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->bytesToEncoding([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2947
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2951
    :cond_0
    :goto_0
    return-object p0

    .line 2949
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2950
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 2951
    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2058
    if-nez p0, :cond_0

    .line 2059
    const/4 v0, 0x0

    .line 2084
    :goto_0
    return-object v0

    .line 2062
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    .line 2066
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2067
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2068
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2070
    if-eqz v2, :cond_1

    .line 2066
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2075
    :cond_1
    const/4 v2, 0x1

    .line 2076
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2080
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_2

    .line 2084
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2039
    const-string/jumbo v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    const-string/jumbo v1, " "

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2296
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static convertEOLToCRLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    const-string/jumbo v0, "(\r\n|\r|\n)"

    const-string/jumbo v1, "\r\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertEOLToLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v0, 0x0

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 613
    array-length v4, v3

    move v1, v0

    .line 614
    :goto_0
    if-ge v0, v4, :cond_2

    .line 615
    aget-char v5, v3, v0

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 616
    sub-int v5, v0, v1

    invoke-virtual {v2, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-char v1, v3, v1

    if-ne v1, v7, :cond_0

    .line 619
    add-int/lit8 v0, v0, 0x1

    .line 622
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 614
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_2
    if-nez v1, :cond_3

    .line 631
    :goto_1
    return-object p0

    .line 630
    :cond_3
    sub-int v0, v4, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2659
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2660
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2662
    :cond_1
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2664
    :goto_0
    const/4 v1, -0x1

    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2665
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2667
    :cond_2
    return-void
.end method

.method public static cropBetween(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1746
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->cropBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cropBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1762
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    move v2, v3

    .line 1765
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 1766
    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    .line 1770
    :goto_1
    add-int v2, v6, v5

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1769
    goto :goto_1

    .line 1774
    :cond_2
    if-eqz v0, :cond_3

    .line 1775
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static displayWidth(C)I
    .locals 1

    .prologue
    .line 2456
    const/16 v0, 0x4f9

    if-le p0, v0, :cond_4

    const/16 v0, 0x5be

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x5f3

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5f4

    if-eq p0, v0, :cond_4

    const/16 v0, 0xe00

    if-lt p0, v0, :cond_1

    const/16 v0, 0xe7f

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_2

    const/16 v0, 0x20af

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_3

    const/16 v0, 0x213a

    if-le p0, v0, :cond_4

    :cond_3
    const v0, 0xff61

    if-lt p0, v0, :cond_5

    const v0, 0xffdc

    if-gt p0, v0, :cond_5

    .line 2465
    :cond_4
    const/4 v0, 0x1

    .line 2467
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static displayWidth(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2426
    .line 2427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 2428
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2429
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->displayWidth(C)I

    move-result v3

    add-int/2addr v1, v3

    .line 2428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2431
    :cond_0
    return v1
.end method

.method public static encodingToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 2777
    if-nez p0, :cond_0

    .line 2778
    const/4 v0, 0x0

    .line 2782
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2783
    :catch_0
    move-exception v0

    .line 2784
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported! Original exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2259
    if-ne p0, p1, :cond_0

    .line 2260
    const/4 v0, 0x1

    .line 2267
    :goto_0
    return v0

    .line 2262
    :cond_0
    if-eqz p0, :cond_1

    .line 2263
    if-eqz p1, :cond_1

    .line 2264
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static expandShardNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2864
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2865
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2867
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2869
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2873
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2877
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2880
    if-le v0, v3, :cond_0

    .line 2881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Maximum shard must be greater than or equal to the minimum shard"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2893
    :catch_0
    move-exception v0

    .line 2894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DB specification component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2885
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2886
    :goto_0
    if-gt v0, v3, :cond_2

    .line 2887
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    if-eq v0, v3, :cond_1

    .line 2889
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2892
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 2898
    :cond_3
    return-object p0
.end method

.method public static fixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string/jumbo v0, "\n"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fixedWidth([Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 236
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_6

    .line 238
    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, p1, :cond_2

    .line 243
    aget-object v2, p0, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    aget-object v2, p0, v0

    const-string/jumbo v3, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v2, v3}, Lcom/google/gdata/util/common/base/StringUtil;->splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 247
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 248
    if-eqz v3, :cond_3

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    if-ge v6, p1, :cond_5

    .line 250
    :cond_3
    if-eqz v3, :cond_4

    .line 251
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 254
    :cond_4
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 255
    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    :cond_5
    const-string/jumbo v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 259
    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 264
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    .line 586
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v2

    .line 603
    :goto_0
    return-object v0

    .line 589
    :cond_0
    aput-byte v0, v2, v0

    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    .line 591
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 592
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 593
    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string contains non-hex chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_2

    .line 597
    shr-int/lit8 v4, v1, 0x1

    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 601
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_2
    shr-int/lit8 v4, v1, 0x1

    aget-byte v5, v2, v4

    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v3

    int-to-byte v3, v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 603
    goto :goto_0
.end method

.method private static hexValue(C)I
    .locals 1

    .prologue
    .line 722
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 723
    add-int/lit8 v0, p0, -0x30

    .line 727
    :goto_0
    return v0

    .line 724
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 725
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 727
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1607
    move v2, v0

    move-object v1, v3

    .line 1610
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1611
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move-object v4, v3

    .line 1628
    :goto_1
    if-eqz v4, :cond_2

    .line 1629
    if-nez v1, :cond_0

    .line 1634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1636
    :cond_0
    if-le v2, v0, :cond_1

    .line 1638
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    add-int/lit8 v0, v2, 0x1

    .line 1610
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1613
    :sswitch_0
    const-string/jumbo v4, "&quot;"

    goto :goto_1

    .line 1616
    :sswitch_1
    const-string/jumbo v4, "&amp;"

    goto :goto_1

    .line 1619
    :sswitch_2
    const-string/jumbo v4, "&lt;"

    goto :goto_1

    .line 1622
    :sswitch_3
    const-string/jumbo v4, "&gt;"

    goto :goto_1

    .line 1645
    :cond_3
    if-lez v0, :cond_4

    .line 1646
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :cond_4
    if-eqz v1, :cond_5

    .line 1650
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1652
    :cond_5
    return-object p0

    .line 1611
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method public static indent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 304
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static indexOfChars(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v0, p2

    .line 456
    :goto_0
    if-ge v0, v1, :cond_1

    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 462
    :goto_1
    return v0

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static insertBreakingWhitespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    if-eqz p1, :cond_0

    if-gtz p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 280
    if-gt v1, p0, :cond_2

    .line 291
    :goto_0
    return-object p1

    .line 283
    :cond_2
    const/4 v0, 0x0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    :goto_1
    sub-int v3, v1, v0

    if-le v3, p0, :cond_3

    .line 286
    add-int v3, v0, p0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/2addr v0, p0

    .line 288
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isCjk(C)Z
    .locals 1

    .prologue
    .line 2374
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isCjk(I)Z

    move-result v0

    return v0
.end method

.method public static isCjk(I)Z
    .locals 2

    .prologue
    .line 2383
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 2384
    const/4 v0, 0x0

    .line 2387
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCjk(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 2327
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2328
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->isCjk(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2329
    const/4 v0, 0x1

    .line 2332
    :cond_0
    return v0

    .line 2327
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2171
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2181
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 2183
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2187
    :goto_1
    return v0

    .line 2182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2187
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isHebrew(I)Z
    .locals 2

    .prologue
    .line 2317
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 2305
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2306
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->isHebrew(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2307
    const/4 v0, 0x1

    .line 2310
    :cond_0
    return v0

    .line 2305
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 1

    .prologue
    .line 716
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(C)Z
    .locals 1

    .prologue
    .line 712
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1506
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1507
    sparse-switch v2, :sswitch_data_0

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1505
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1508
    :sswitch_0
    const-string/jumbo v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1509
    :sswitch_1
    const-string/jumbo v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1510
    :sswitch_2
    const-string/jumbo v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1511
    :sswitch_3
    const-string/jumbo v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1512
    :sswitch_4
    const-string/jumbo v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1513
    :sswitch_5
    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1514
    :sswitch_6
    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1515
    :sswitch_7
    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1516
    :sswitch_8
    const-string/jumbo v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1520
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1507
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_8
        0x3c -> :sswitch_6
        0x3e -> :sswitch_7
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static javaEscapeWithinAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1533
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1534
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1535
    sparse-switch v2, :sswitch_data_0

    .line 1545
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1533
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1536
    :sswitch_0
    const-string/jumbo v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1537
    :sswitch_1
    const-string/jumbo v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1538
    :sswitch_2
    const-string/jumbo v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1539
    :sswitch_3
    const-string/jumbo v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1540
    :sswitch_4
    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1541
    :sswitch_5
    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1542
    :sswitch_6
    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1543
    :sswitch_7
    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1544
    :sswitch_8
    const-string/jumbo v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1548
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1535
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_8
        0x3c -> :sswitch_6
        0x3e -> :sswitch_7
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static javaScriptEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptEscapeHelper(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x8

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v6, v4

    .line 1261
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1262
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1263
    sparse-switch v9, :sswitch_data_0

    .line 1300
    const/16 v0, 0x80

    if-lt v9, v0, :cond_3

    if-eqz p1, :cond_3

    .line 1301
    invoke-static {v8, v9}, Lcom/google/gdata/util/common/base/StringUtil;->appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V

    .line 1261
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1264
    :sswitch_0
    const-string/jumbo v0, "\\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1265
    :sswitch_1
    const-string/jumbo v0, "\\r"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1266
    :sswitch_2
    const-string/jumbo v0, "\\t"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1267
    :sswitch_3
    const-string/jumbo v0, "\\\\"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1268
    :sswitch_4
    const-string/jumbo v0, "\\\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1269
    :sswitch_5
    const-string/jumbo v0, "\\\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1272
    :sswitch_6
    invoke-static {v8, v9}, Lcom/google/gdata/util/common/base/StringUtil;->appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 1277
    :sswitch_7
    sget-object v10, Lcom/google/gdata/util/common/base/StringUtil;->UNSAFE_TAGS:[Ljava/lang/String;

    array-length v11, v10

    move v7, v4

    :goto_2
    if-ge v7, v11, :cond_5

    aget-object v3, v10, v7

    .line 1278
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1283
    :goto_3
    if-eqz v0, :cond_1

    .line 1284
    invoke-static {v8, v9}, Lcom/google/gdata/util/common/base/StringUtil;->appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 1277
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 1286
    :cond_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1290
    :sswitch_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_2

    .line 1291
    const/16 v0, 0x5c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1297
    :sswitch_9
    const-string/jumbo v0, "\\u2028"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1298
    :sswitch_a
    const-string/jumbo v0, "\\u2029"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1303
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1307
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, v4

    goto :goto_3

    .line 1263
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x27 -> :sswitch_5
        0x2f -> :sswitch_7
        0x3c -> :sswitch_7
        0x3d -> :sswitch_6
        0x3e -> :sswitch_8
        0x5c -> :sswitch_3
        0x2028 -> :sswitch_9
        0x2029 -> :sswitch_a
    .end sparse-switch
.end method

.method public static javaScriptEscapeToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1337
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1339
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 1340
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_0

    .line 1342
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1346
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 5

    .prologue
    .line 1359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End-of-string after escape character in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1365
    sparse-switch v1, :sswitch_data_0

    .line 1396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown escape code ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :sswitch_0
    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1400
    :goto_0
    return v0

    .line 1367
    :sswitch_1
    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1368
    :sswitch_2
    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1373
    :sswitch_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1378
    :sswitch_4
    add-int/lit8 v1, v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1386
    const/16 v2, 0x10

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1392
    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1393
    add-int/lit8 v0, v0, 0x4

    .line 1394
    goto :goto_0

    .line 1379
    :catch_0
    move-exception v1

    .line 1380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid unicode sequence ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1387
    :catch_1
    move-exception v2

    .line 1388
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid unicode sequence ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1365
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x3e -> :sswitch_3
        0x5c -> :sswitch_3
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_4
    .end sparse-switch
.end method

.method public static javaUtilRegexEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1688
    const-string/jumbo v0, "\\E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1699
    :goto_0
    return-object v0

    .line 1693
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1694
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1695
    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1699
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 182
    :goto_0
    return-object v0

    .line 173
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 176
    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_2
    aget-object v2, p0, v0

    if-eqz v2, :cond_3

    .line 180
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static joinInts([ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    .line 139
    :goto_0
    return-object v0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 134
    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static joinLongs([JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    .line 156
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 151
    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexNotOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 482
    :goto_0
    if-ltz v0, :cond_1

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 488
    :goto_1
    return v0

    .line 482
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lastToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2274
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2275
    array-length v1, v0

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static latin1ToBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 2729
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->encodingToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static list2String(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1888
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->Collection2String(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 2017
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2018
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2019
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2020
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2021
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Duplicate string key in map when lower casing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2024
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2026
    :cond_1
    return-object v1
.end method

.method public static lstrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 2196
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    return-object p0
.end method

.method public static map2String(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1991
    if-nez p0, :cond_0

    .line 1992
    const/4 v0, 0x0

    .line 2005
    :goto_0
    return-object v0

    .line 1995
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1996
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1997
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1998
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1999
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2005
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static maskLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    if-gtz p1, :cond_0

    .line 691
    :goto_0
    return-object p0

    .line 685
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 688
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static maskRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 699
    if-gtz p1, :cond_0

    .line 708
    :goto_0
    return-object p0

    .line 702
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :goto_1
    if-ge v0, v1, :cond_1

    .line 706
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    if-nez p0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 338
    :goto_1
    if-eqz p1, :cond_1

    if-gt v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 346
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static numSharedChars(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 437
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v0

    .line 446
    :cond_1
    return v2

    :cond_2
    move v2, v0

    move v0, v1

    .line 442
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static padLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3

    .prologue
    .line 645
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 654
    :goto_0
    return-object p0

    .line 648
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p1, v0

    .line 650
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 651
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3

    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 673
    :goto_0
    return-object p0

    .line 667
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p1, v0

    .line 669
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 671
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 673
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseDelimitedList(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2129
    new-instance v4, Ljava/util/StringTokenizer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v4, v0, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2133
    const-string/jumbo v1, ""

    .line 2134
    const-string/jumbo v0, ""

    .line 2148
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2149
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 2150
    if-eqz v1, :cond_3

    .line 2151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2153
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 2155
    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    :cond_1
    const-string/jumbo v0, ""

    move-object v1, v2

    goto :goto_0

    .line 2162
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public static pythonEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1213
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1214
    sparse-switch v2, :sswitch_data_0

    .line 1221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1215
    :sswitch_0
    const-string/jumbo v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1216
    :sswitch_1
    const-string/jumbo v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1217
    :sswitch_2
    const-string/jumbo v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1218
    :sswitch_3
    const-string/jumbo v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1219
    :sswitch_4
    const-string/jumbo v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1220
    :sswitch_5
    const-string/jumbo v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1224
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_4
        0x27 -> :sswitch_5
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static regexEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1663
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1664
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1666
    const-string/jumbo v3, "()|*+?.{}[]$^\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1667
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1663
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1675
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexReplacementEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1714
    const/4 v0, 0x0

    .line 1716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    .line 1717
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1719
    sparse-switch v5, :sswitch_data_0

    :goto_1
    move-object v3, v0

    .line 1730
    if-eqz v3, :cond_0

    .line 1731
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1716
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    .line 1722
    :sswitch_0
    if-nez v0, :cond_1

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1728
    :cond_1
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1737
    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1719
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static removeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 516
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 517
    if-ne v1, v3, :cond_0

    .line 532
    :goto_0
    return-object p0

    .line 521
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    const/4 v0, 0x0

    .line 524
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v0, v1, 0x1

    .line 526
    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 527
    if-ne v1, v3, :cond_1

    .line 529
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 530
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2909
    if-ge p1, v0, :cond_1

    .line 2910
    const-string/jumbo p0, ""

    .line 2923
    :cond_0
    :goto_0
    return-object p0

    .line 2912
    :cond_1
    if-eq p1, v0, :cond_0

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2918
    :goto_1
    if-lez p1, :cond_2

    .line 2919
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2923
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    sget-boolean v0, Lcom/google/gdata/util/common/base/StringUtil;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 497
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 498
    if-ne v0, v2, :cond_0

    .line 508
    :goto_0
    return-object p0

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    :cond_1
    invoke-virtual {v1, v0, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 506
    if-ne v0, v2, :cond_1

    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceSmartQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 558
    const-string/jumbo v0, "\u0091\u0092\u2018\u2019"

    const/16 v1, 0x27

    invoke-static {p0, v0, v1}, Lcom/google/gdata/util/common/base/StringUtil;->replaceChars(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 559
    const-string/jumbo v1, "\u0093\u0094\u201c\u201d"

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->replaceChars(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 560
    return-object v0
.end method

.method public static retainAllChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 540
    invoke-static {p0, p1}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 541
    if-ne v0, v3, :cond_0

    .line 542
    const-string/jumbo v0, ""

    .line 549
    :goto_0
    return-object v0

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->indexOfChars(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 548
    if-ne v0, v3, :cond_1

    .line 549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static rstrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 83
    new-array v3, v2, [Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 84
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1

    .line 91
    :cond_1
    return-object v3
.end method

.method public static splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitInts(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 105
    new-array v3, v2, [I

    .line 106
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-object v3
.end method

.method public static splitLongs(Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 117
    new-array v3, v2, [J

    .line 118
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-object v3
.end method

.method public static stream2String(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2098
    const/16 v0, 0x1000

    new-array v3, v0, [B

    .line 2099
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move v0, v1

    move v2, v1

    .line 2104
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2105
    add-int/2addr v2, v0

    .line 2106
    array-length v0, v3

    invoke-virtual {p0, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2107
    if-eq v6, p1, :cond_1

    if-ge v2, p1, :cond_2

    :cond_1
    if-ne v0, v6, :cond_0

    .line 2109
    :cond_2
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1841
    if-nez p0, :cond_0

    .line 1842
    const/4 v0, 0x0

    .line 1874
    :goto_0
    return-object v0

    .line 1844
    :cond_0
    if-nez p3, :cond_a

    .line 1845
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1848
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1849
    goto :goto_0

    .line 1852
    :cond_2
    const/4 v0, 0x0

    .line 1854
    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_6

    .line 1855
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1856
    if-eqz p2, :cond_3

    .line 1857
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1860
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1863
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 1864
    goto :goto_2

    .line 1866
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1867
    if-eqz p2, :cond_7

    .line 1868
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 1871
    :cond_8
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v0, v1

    .line 1874
    goto :goto_0

    :cond_a
    move-object v1, p3

    goto :goto_1
.end method

.method public static string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    if-nez p0, :cond_0

    .line 1794
    const/4 v0, 0x0

    .line 1799
    :goto_0
    return-object v0

    .line 1797
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1798
    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public static string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1949
    if-nez p0, :cond_0

    .line 1950
    const/4 v0, 0x0

    .line 1976
    :goto_0
    return-object v0

    .line 1953
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1955
    invoke-static {p1}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1956
    :cond_1
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1957
    goto :goto_0

    .line 1960
    :cond_2
    invoke-static {p0, p1, v6}, Lcom/google/gdata/util/common/base/StringUtil;->string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1961
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1962
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1963
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1964
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1965
    if-lez v5, :cond_4

    .line 1966
    add-int v1, v5, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1967
    if-eqz p3, :cond_3

    .line 1968
    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1970
    :cond_3
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1972
    :cond_4
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 1976
    goto :goto_0
.end method

.method public static string2Set(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1813
    if-nez p0, :cond_0

    .line 1814
    const/4 v0, 0x0

    .line 1819
    :goto_0
    return-object v0

    .line 1817
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1818
    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 378
    const-string/jumbo v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {p0, v1, v1, v0}, Lcom/google/gdata/util/common/base/StringUtil;->megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAndCollapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1200
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripNonDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 422
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 423
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-char v4, v2, v0

    .line 424
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 425
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2205
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2215
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2557
    if-nez p0, :cond_0

    .line 2558
    const-string/jumbo v0, "NULL"

    .line 2560
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2474
    if-nez p0, :cond_0

    .line 2475
    const-string/jumbo v0, "NULL"

    .line 2487
    :goto_0
    return-object v0

    .line 2478
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2479
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2481
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2482
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2483
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2486
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2514
    if-nez p0, :cond_0

    .line 2515
    const-string/jumbo v0, "NULL"

    .line 2527
    :goto_0
    return-object v0

    .line 2518
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2519
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2521
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2522
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2523
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2526
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2494
    if-nez p0, :cond_0

    .line 2495
    const-string/jumbo v0, "NULL"

    .line 2507
    :goto_0
    return-object v0

    .line 2498
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2499
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2501
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2502
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2503
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2506
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2624
    if-nez p0, :cond_0

    const-string/jumbo v0, "NULL"

    .line 2634
    :goto_0
    return-object v0

    .line 2625
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2626
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2628
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2630
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2633
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2534
    if-nez p0, :cond_0

    const-string/jumbo v0, "NULL"

    .line 2546
    :goto_0
    return-object v0

    .line 2536
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2537
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2539
    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2541
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2544
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([[I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2570
    if-nez p0, :cond_0

    .line 2571
    const-string/jumbo v0, "NULL"

    .line 2590
    :goto_0
    return-object v0

    .line 2574
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2575
    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2576
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 2577
    const-string/jumbo v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 2578
    :goto_2
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 2579
    aget-object v4, p0, v0

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2580
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    .line 2581
    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2584
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    .line 2586
    const-string/jumbo v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2589
    :cond_4
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([[J)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2597
    if-nez p0, :cond_0

    const-string/jumbo v0, "NULL"

    .line 2615
    :goto_0
    return-object v0

    .line 2599
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2600
    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2601
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 2602
    const-string/jumbo v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 2603
    :goto_2
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 2604
    aget-object v4, p0, v0

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2605
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    .line 2606
    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2609
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    .line 2611
    const-string/jumbo v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2614
    :cond_4
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2615
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toUTF8InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 2644
    .line 2646
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    return-object v0

    .line 2647
    :catch_0
    move-exception v0

    .line 2649
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2840
    if-nez p0, :cond_0

    .line 2841
    const/4 v0, 0x0

    .line 2843
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeCString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0x5c

    .line 736
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 788
    :goto_0
    return-object p0

    .line 741
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 743
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    .line 744
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 745
    if-ne v0, v3, :cond_7

    if-ge v2, v5, :cond_7

    .line 746
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 747
    sparse-switch v0, :sswitch_data_0

    .line 761
    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/gdata/util/common/base/StringUtil;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v0

    .line 764
    if-ge v2, v5, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->isHex(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 765
    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/gdata/util/common/base/StringUtil;->hexValue(C)I

    move-result v2

    add-int/2addr v0, v2

    .line 767
    :goto_2
    int-to-char v0, v0

    .line 786
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 748
    :sswitch_0
    const/4 v0, 0x7

    goto :goto_3

    .line 749
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_3

    .line 750
    :sswitch_2
    const/16 v0, 0xc

    goto :goto_3

    .line 751
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_3

    .line 752
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_3

    .line 753
    :sswitch_5
    const/16 v0, 0x9

    goto :goto_3

    .line 754
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_3

    :sswitch_7
    move v0, v3

    .line 755
    goto :goto_3

    .line 756
    :sswitch_8
    const/16 v0, 0x3f

    goto :goto_3

    .line 757
    :sswitch_9
    const/16 v0, 0x27

    goto :goto_3

    .line 758
    :sswitch_a
    const/16 v0, 0x22

    goto :goto_3

    .line 768
    :cond_1
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->isOctal(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 770
    add-int/lit8 v0, v0, -0x30

    .line 771
    if-ge v1, v5, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/gdata/util/common/base/StringUtil;->isOctal(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 772
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 774
    :goto_4
    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/gdata/util/common/base/StringUtil;->isOctal(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 777
    :goto_5
    int-to-char v0, v0

    .line 778
    goto :goto_3

    .line 780
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 788
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_5

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    .line 747
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x3f -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public static final unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 1130
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 1131
    array-length v0, v8

    new-array v9, v0, [C

    .line 1134
    const/4 v1, 0x0

    .line 1136
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    array-length v0, v8

    if-ge v1, v0, :cond_8

    .line 1137
    aget-char v0, v8, v1

    const/16 v3, 0x26

    if-eq v0, v3, :cond_0

    .line 1138
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v8, v1

    aput-char v1, v9, v2

    move v1, v0

    move v2, v3

    .line 1139
    goto :goto_0

    .line 1143
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 1144
    array-length v3, v8

    if-ge v0, v3, :cond_c

    aget-char v3, v8, v0

    const/16 v4, 0x23

    if-ne v3, v4, :cond_c

    .line 1145
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 1148
    :goto_1
    array-length v0, v8

    if-ge v3, v0, :cond_1

    .line 1149
    aget-char v0, v8, v3

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1153
    :cond_1
    const/4 v4, 0x0

    .line 1154
    array-length v0, v8

    if-ge v3, v0, :cond_b

    aget-char v0, v8, v3

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_b

    .line 1155
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x23

    if-ne v0, v5, :cond_7

    .line 1157
    const-wide/16 v6, 0x0

    .line 1158
    add-int/lit8 v0, v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1159
    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-ne v0, v5, :cond_6

    .line 1160
    :cond_2
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v1, 0x3

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x3

    invoke-direct {v0, v8, v5, v6}, Ljava/lang/String;-><init>([CII)V

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1165
    :cond_3
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-lez v0, :cond_a

    const-wide/32 v10, 0x10000

    cmp-long v0, v6, v10

    if-gez v0, :cond_a

    .line 1166
    add-int/lit8 v5, v2, 0x1

    long-to-int v0, v6

    int-to-char v0, v0

    :try_start_1
    aput-char v0, v9, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1167
    const/4 v0, 0x1

    move v2, v5

    :goto_3
    move v4, v0

    .line 1181
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 1184
    :goto_5
    if-nez v4, :cond_9

    .line 1186
    sub-int v3, v0, v1

    invoke-static {v8, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    sub-int v1, v0, v1

    add-int/2addr v1, v2

    :goto_6
    move v2, v1

    move v1, v0

    .line 1190
    goto/16 :goto_0

    .line 1148
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1162
    :cond_6
    :try_start_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1163
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v1, 0x2

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v0, v8, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v6

    goto :goto_2

    .line 1174
    :cond_7
    new-instance v0, Ljava/lang/String;

    sub-int v5, v3, v1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v0, v8, v1, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1175
    sget-object v5, Lcom/google/gdata/util/common/base/StringUtil;->escapeStrings:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 1176
    if-eqz v0, :cond_4

    .line 1177
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v9, v2

    .line 1178
    const/4 v4, 0x1

    move v2, v5

    goto :goto_4

    .line 1191
    :cond_8
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1169
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v2, v5

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    move v0, v4

    goto :goto_3

    :cond_b
    move v0, v3

    goto :goto_5

    :cond_c
    move v3, v0

    goto/16 :goto_1
.end method

.method public static unescapeMySQLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    const/16 v9, 0x22

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 805
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 808
    array-length v0, v7

    if-lt v0, v5, :cond_0

    aget-char v0, v7, v3

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v7, v2

    if-ne v0, v2, :cond_0

    aget-char v0, v7, v3

    if-eq v0, v10, :cond_1

    aget-char v0, v7, v3

    if-eq v0, v9, :cond_1

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a valid MySQL string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    move v2, v3

    move v4, v1

    .line 817
    :goto_0
    array-length v6, v7

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_7

    .line 818
    if-nez v2, :cond_4

    .line 819
    aget-char v6, v7, v0

    const/16 v8, 0x5c

    if-ne v6, v8, :cond_2

    move v2, v1

    .line 817
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_2
    aget-char v6, v7, v0

    aget-char v8, v7, v3

    if-ne v6, v8, :cond_3

    move v2, v5

    .line 822
    goto :goto_1

    .line 824
    :cond_3
    add-int/lit8 v6, v4, 0x1

    aget-char v8, v7, v0

    aput-char v8, v7, v4

    move v4, v6

    goto :goto_1

    .line 826
    :cond_4
    if-ne v2, v1, :cond_5

    .line 827
    aget-char v2, v7, v0

    sparse-switch v2, :sswitch_data_0

    .line 839
    add-int/lit8 v2, v4, 0x1

    aget-char v6, v7, v0

    aput-char v6, v7, v4

    :goto_2
    move v4, v2

    move v2, v3

    .line 842
    goto :goto_1

    .line 828
    :sswitch_0
    add-int/lit8 v2, v4, 0x1

    aput-char v3, v7, v4

    goto :goto_2

    .line 829
    :sswitch_1
    add-int/lit8 v2, v4, 0x1

    aput-char v10, v7, v4

    goto :goto_2

    .line 830
    :sswitch_2
    add-int/lit8 v2, v4, 0x1

    aput-char v9, v7, v4

    goto :goto_2

    .line 831
    :sswitch_3
    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0x8

    aput-char v6, v7, v4

    goto :goto_2

    .line 832
    :sswitch_4
    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0xa

    aput-char v6, v7, v4

    goto :goto_2

    .line 833
    :sswitch_5
    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0xd

    aput-char v6, v7, v4

    goto :goto_2

    .line 834
    :sswitch_6
    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0x9

    aput-char v6, v7, v4

    goto :goto_2

    .line 835
    :sswitch_7
    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0x1a

    aput-char v6, v7, v4

    goto :goto_2

    .line 836
    :sswitch_8
    add-int/lit8 v2, v4, 0x1

    const/16 v6, 0x5c

    aput-char v6, v7, v4

    goto :goto_2

    .line 845
    :cond_5
    aget-char v2, v7, v0

    aget-char v6, v7, v3

    if-eq v2, v6, :cond_6

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a valid MySQL string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_6
    add-int/lit8 v2, v4, 0x1

    aget-char v6, v7, v3

    aput-char v6, v7, v4

    move v4, v2

    move v2, v3

    .line 849
    goto/16 :goto_1

    .line 853
    :cond_7
    if-eqz v2, :cond_8

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a valid MySQL string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_8
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v2, v4, -0x1

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x30 -> :sswitch_0
        0x5c -> :sswitch_8
        0x62 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x7a -> :sswitch_7
    .end sparse-switch
.end method

.method public static unicodeEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2396
    invoke-static {p0}, Lcom/google/gdata/util/common/base/StringUtil;->allAscii(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    :goto_0
    return-object p0

    .line 2399
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2400
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    .line 2401
    :goto_1
    if-ge v2, v4, :cond_3

    .line 2402
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2403
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_1

    .line 2404
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2401
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 2406
    :cond_1
    const-string/jumbo v5, "\\u"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2409
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v6, v0, 0x4

    move v0, v1

    .line 2410
    :goto_3
    if-ge v0, v6, :cond_2

    .line 2411
    const/16 v7, 0x30

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2410
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2413
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2416
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static utf8ToBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 2749
    const-string/jumbo v0, "UTF8"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/StringUtil;->encodingToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static xmlCDataEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1480
    sget-object v0, Lcom/google/gdata/util/common/base/StringUtil;->CONTROL_MATCHER:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1482
    const-string/jumbo v0, "]]>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1483
    if-ne v1, v5, :cond_0

    move-object v0, v2

    .line 1497
    :goto_0
    return-object v0

    .line 1489
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    const/4 v0, 0x0

    .line 1492
    :cond_1
    add-int/lit8 v4, v1, 0x3

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    const-string/jumbo v0, "]]&gt;<![CDATA["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    add-int/lit8 v0, v1, 0x3

    .line 1495
    const-string/jumbo v1, "]]>"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1496
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static xmlContentEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1410
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1411
    packed-switch v2, :pswitch_data_0

    .line 1423
    :pswitch_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1409
    :goto_1
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1412
    :pswitch_2
    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1413
    :pswitch_3
    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1426
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1558
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1559
    sparse-switch v2, :sswitch_data_0

    .line 1588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1557
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1561
    :sswitch_1
    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1564
    :sswitch_2
    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1567
    :sswitch_3
    const-string/jumbo v2, "&apos;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1570
    :sswitch_4
    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1573
    :sswitch_5
    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1576
    :sswitch_6
    const-string/jumbo v2, "&#xA;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1579
    :sswitch_7
    const-string/jumbo v2, "&#xD;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1582
    :sswitch_8
    const-string/jumbo v2, "&#x9;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1592
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_8
        0xa -> :sswitch_6
        0xd -> :sswitch_7
        0x22 -> :sswitch_1
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method public static xmlSingleQuotedEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1437
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1438
    packed-switch v2, :pswitch_data_0

    .line 1452
    :pswitch_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1436
    :goto_1
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1439
    :pswitch_2
    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1440
    :pswitch_3
    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1441
    :pswitch_4
    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1442
    :pswitch_5
    const-string/jumbo v2, "&#xA;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1455
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
