package f;

import d.bf;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.Map;
import java.util.Set;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: compiled from: ServiceMethod.java */
/* JADX INFO: loaded from: classes3.dex */
final class ba<T, R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final aw f4834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Method f4835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Annotation[] f4836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Annotation[][] f4837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Type[] f4838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Type f4839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f4840g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    String m;
    boolean n;
    boolean o;
    boolean p;
    String q;
    d.ag r;
    d.an s;
    Set<String> t;
    z<?>[] u;
    k<bf, T> v;
    h<T, R> w;

    ba(aw awVar, Method method) {
        this.f4834a = awVar;
        this.f4835b = method;
        this.f4836c = method.getAnnotations();
        this.f4838e = method.getGenericParameterTypes();
        this.f4837d = method.getParameterAnnotations();
    }

    public az a() {
        this.w = b();
        this.f4839f = this.w.a();
        if (this.f4839f == av.class || this.f4839f == d.bd.class) {
            throw a("'" + bb.a(this.f4839f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        }
        this.v = c();
        for (Annotation annotation : this.f4836c) {
            a(annotation);
        }
        if (this.m == null) {
            throw a("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
        }
        if (!this.n) {
            if (this.p) {
                throw a("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
            }
            if (this.o) {
                throw a("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
            }
        }
        int length = this.f4837d.length;
        this.u = new z[length];
        for (int i = 0; i < length; i++) {
            Type type = this.f4838e[i];
            if (bb.d(type)) {
                throw a(i, "Parameter type must not include a type variable or wildcard: %s", type);
            }
            Annotation[] annotationArr = this.f4837d[i];
            if (annotationArr == null) {
                throw a(i, "No Retrofit annotation found.", new Object[0]);
            }
            this.u[i] = a(i, type, annotationArr);
        }
        if (this.q == null && !this.l) {
            throw a("Missing either @%s URL or @Url parameter.", this.m);
        }
        if (!this.o && !this.p && !this.n && this.i) {
            throw a("Non-body HTTP method cannot contain @Body.", new Object[0]);
        }
        if (this.o && !this.f4840g) {
            throw a("Form-encoded method must contain at least one @Field.", new Object[0]);
        }
        if (this.p && !this.h) {
            throw a("Multipart method must contain at least one @Part.", new Object[0]);
        }
        return new az(this);
    }

    private h<T, R> b() {
        Type genericReturnType = this.f4835b.getGenericReturnType();
        if (bb.d(genericReturnType)) {
            throw a("Method return type must not include a type variable or wildcard: %s", genericReturnType);
        }
        if (genericReturnType == Void.TYPE) {
            throw a("Service methods cannot return void.", new Object[0]);
        }
        try {
            return (h<T, R>) this.f4834a.a(genericReturnType, this.f4835b.getAnnotations());
        } catch (RuntimeException e2) {
            throw a(e2, "Unable to create call adapter for %s", genericReturnType);
        }
    }

    private void a(Annotation annotation) {
        if (annotation instanceof f.b.b) {
            a("DELETE", ((f.b.b) annotation).a(), false);
            return;
        }
        if (annotation instanceof f.b.f) {
            a("GET", ((f.b.f) annotation).a(), false);
            return;
        }
        if (annotation instanceof f.b.g) {
            a("HEAD", ((f.b.g) annotation).a(), false);
            if (!Void.class.equals(this.f4839f)) {
                throw a("HEAD method must use Void as response type.", new Object[0]);
            }
            return;
        }
        if (annotation instanceof f.b.n) {
            a("PATCH", ((f.b.n) annotation).a(), true);
            return;
        }
        if (annotation instanceof f.b.o) {
            a("POST", ((f.b.o) annotation).a(), true);
            return;
        }
        if (annotation instanceof f.b.p) {
            a("PUT", ((f.b.p) annotation).a(), true);
            return;
        }
        if (annotation instanceof f.b.m) {
            a("OPTIONS", ((f.b.m) annotation).a(), false);
            return;
        }
        if (annotation instanceof f.b.h) {
            f.b.h hVar = (f.b.h) annotation;
            a(hVar.a(), hVar.b(), hVar.c());
            return;
        }
        if (annotation instanceof f.b.k) {
            String[] strArrA = ((f.b.k) annotation).a();
            if (strArrA.length == 0) {
                throw a("@Headers annotation is empty.", new Object[0]);
            }
            this.r = a(strArrA);
            return;
        }
        if (annotation instanceof f.b.l) {
            if (this.o) {
                throw a("Only one encoding annotation is allowed.", new Object[0]);
            }
            this.p = true;
        } else if (annotation instanceof f.b.e) {
            if (this.p) {
                throw a("Only one encoding annotation is allowed.", new Object[0]);
            }
            this.o = true;
        }
    }

    private void a(String str, String str2, boolean z) {
        if (this.m != null) {
            throw a("Only one HTTP method is allowed. Found: %s and %s.", this.m, str);
        }
        this.m = str;
        this.n = z;
        if (!str2.isEmpty()) {
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (az.f4826a.matcher(strSubstring).find()) {
                    throw a("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.q = str2;
            this.t = az.a(str2);
        }
    }

    private d.ag a(String[] strArr) {
        d.ah ahVar = new d.ah();
        for (String str : strArr) {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                throw a("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
            }
            String strSubstring = str.substring(0, iIndexOf);
            String strTrim = str.substring(iIndexOf + 1).trim();
            if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                d.an anVarA = d.an.a(strTrim);
                if (anVarA == null) {
                    throw a("Malformed content type: %s", strTrim);
                }
                this.s = anVarA;
            } else {
                ahVar.a(strSubstring, strTrim);
            }
        }
        return ahVar.a();
    }

    private z<?> a(int i, Type type, Annotation[] annotationArr) {
        z<?> zVar = null;
        for (Annotation annotation : annotationArr) {
            z<?> zVarA = a(i, type, annotationArr, annotation);
            if (zVarA != null) {
                if (zVar != null) {
                    throw a(i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                }
                zVar = zVarA;
            }
        }
        if (zVar == null) {
            throw a(i, "No Retrofit annotation found.", new Object[0]);
        }
        return zVar;
    }

    private z<?> a(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
        if (annotation instanceof f.b.x) {
            if (this.l) {
                throw a(i, "Multiple @Url method annotations found.", new Object[0]);
            }
            if (this.j) {
                throw a(i, "@Path parameters may not be used with @Url.", new Object[0]);
            }
            if (this.k) {
                throw a(i, "A @Url parameter must not come after a @Query", new Object[0]);
            }
            if (this.q != null) {
                throw a(i, "@Url cannot be used with @%s URL", this.m);
            }
            this.l = true;
            if (type == d.ai.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                return new ao();
            }
            throw a(i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
        }
        if (annotation instanceof f.b.s) {
            if (this.k) {
                throw a(i, "A @Path parameter must not come after a @Query.", new Object[0]);
            }
            if (this.l) {
                throw a(i, "@Path parameters may not be used with @Url.", new Object[0]);
            }
            if (this.q == null) {
                throw a(i, "@Path can only be used with relative url on @%s", this.m);
            }
            this.j = true;
            f.b.s sVar = (f.b.s) annotation;
            String strA = sVar.a();
            a(i, strA);
            return new aj(strA, this.f4834a.c(type, annotationArr), sVar.b());
        }
        if (annotation instanceof f.b.t) {
            f.b.t tVar = (f.b.t) annotation;
            String strA2 = tVar.a();
            boolean zB = tVar.b();
            Class<?> clsA = bb.a(type);
            this.k = true;
            if (Iterable.class.isAssignableFrom(clsA)) {
                if (!(type instanceof ParameterizedType)) {
                    throw a(i, clsA.getSimpleName() + " must include generic type (e.g., " + clsA.getSimpleName() + "<String>)", new Object[0]);
                }
                return new ak(strA2, this.f4834a.c(bb.a(0, (ParameterizedType) type), annotationArr), zB).a();
            }
            if (clsA.isArray()) {
                return new ak(strA2, this.f4834a.c(az.a(clsA.getComponentType()), annotationArr), zB).b();
            }
            return new ak(strA2, this.f4834a.c(type, annotationArr), zB);
        }
        if (annotation instanceof f.b.v) {
            boolean zA = ((f.b.v) annotation).a();
            Class<?> clsA2 = bb.a(type);
            this.k = true;
            if (Iterable.class.isAssignableFrom(clsA2)) {
                if (!(type instanceof ParameterizedType)) {
                    throw a(i, clsA2.getSimpleName() + " must include generic type (e.g., " + clsA2.getSimpleName() + "<String>)", new Object[0]);
                }
                return new am(this.f4834a.c(bb.a(0, (ParameterizedType) type), annotationArr), zA).a();
            }
            if (clsA2.isArray()) {
                return new am(this.f4834a.c(az.a(clsA2.getComponentType()), annotationArr), zA).b();
            }
            return new am(this.f4834a.c(type, annotationArr), zA);
        }
        if (annotation instanceof f.b.u) {
            Class<?> clsA3 = bb.a(type);
            if (!Map.class.isAssignableFrom(clsA3)) {
                throw a(i, "@QueryMap parameter type must be Map.", new Object[0]);
            }
            Type typeB = bb.b(type, clsA3, Map.class);
            if (!(typeB instanceof ParameterizedType)) {
                throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
            }
            ParameterizedType parameterizedType = (ParameterizedType) typeB;
            Type typeA = bb.a(0, parameterizedType);
            if (String.class != typeA) {
                throw a(i, "@QueryMap keys must be of type String: " + typeA, new Object[0]);
            }
            return new al(this.f4834a.c(bb.a(1, parameterizedType), annotationArr), ((f.b.u) annotation).a());
        }
        if (annotation instanceof f.b.i) {
            String strA3 = ((f.b.i) annotation).a();
            Class<?> clsA4 = bb.a(type);
            if (Iterable.class.isAssignableFrom(clsA4)) {
                if (!(type instanceof ParameterizedType)) {
                    throw a(i, clsA4.getSimpleName() + " must include generic type (e.g., " + clsA4.getSimpleName() + "<String>)", new Object[0]);
                }
                return new af(strA3, this.f4834a.c(bb.a(0, (ParameterizedType) type), annotationArr)).a();
            }
            if (clsA4.isArray()) {
                return new af(strA3, this.f4834a.c(az.a(clsA4.getComponentType()), annotationArr)).b();
            }
            return new af(strA3, this.f4834a.c(type, annotationArr));
        }
        if (annotation instanceof f.b.j) {
            Class<?> clsA5 = bb.a(type);
            if (!Map.class.isAssignableFrom(clsA5)) {
                throw a(i, "@HeaderMap parameter type must be Map.", new Object[0]);
            }
            Type typeB2 = bb.b(type, clsA5, Map.class);
            if (!(typeB2 instanceof ParameterizedType)) {
                throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) typeB2;
            Type typeA2 = bb.a(0, parameterizedType2);
            if (String.class != typeA2) {
                throw a(i, "@HeaderMap keys must be of type String: " + typeA2, new Object[0]);
            }
            return new ag(this.f4834a.c(bb.a(1, parameterizedType2), annotationArr));
        }
        if (annotation instanceof f.b.c) {
            if (!this.o) {
                throw a(i, "@Field parameters can only be used with form encoding.", new Object[0]);
            }
            f.b.c cVar = (f.b.c) annotation;
            String strA4 = cVar.a();
            boolean zB2 = cVar.b();
            this.f4840g = true;
            Class<?> clsA6 = bb.a(type);
            if (Iterable.class.isAssignableFrom(clsA6)) {
                if (!(type instanceof ParameterizedType)) {
                    throw a(i, clsA6.getSimpleName() + " must include generic type (e.g., " + clsA6.getSimpleName() + "<String>)", new Object[0]);
                }
                return new ad(strA4, this.f4834a.c(bb.a(0, (ParameterizedType) type), annotationArr), zB2).a();
            }
            if (clsA6.isArray()) {
                return new ad(strA4, this.f4834a.c(az.a(clsA6.getComponentType()), annotationArr), zB2).b();
            }
            return new ad(strA4, this.f4834a.c(type, annotationArr), zB2);
        }
        if (annotation instanceof f.b.d) {
            if (!this.o) {
                throw a(i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            }
            Class<?> clsA7 = bb.a(type);
            if (!Map.class.isAssignableFrom(clsA7)) {
                throw a(i, "@FieldMap parameter type must be Map.", new Object[0]);
            }
            Type typeB3 = bb.b(type, clsA7, Map.class);
            if (!(typeB3 instanceof ParameterizedType)) {
                throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
            }
            ParameterizedType parameterizedType3 = (ParameterizedType) typeB3;
            Type typeA3 = bb.a(0, parameterizedType3);
            if (String.class != typeA3) {
                throw a(i, "@FieldMap keys must be of type String: " + typeA3, new Object[0]);
            }
            k<T, String> kVarC = this.f4834a.c(bb.a(1, parameterizedType3), annotationArr);
            this.f4840g = true;
            return new ae(kVarC, ((f.b.d) annotation).a());
        }
        if (annotation instanceof f.b.q) {
            if (!this.p) {
                throw a(i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            }
            f.b.q qVar = (f.b.q) annotation;
            this.h = true;
            String strA5 = qVar.a();
            Class<?> clsA8 = bb.a(type);
            if (strA5.isEmpty()) {
                if (Iterable.class.isAssignableFrom(clsA8)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i, clsA8.getSimpleName() + " must include generic type (e.g., " + clsA8.getSimpleName() + "<String>)", new Object[0]);
                    }
                    if (!d.aq.class.isAssignableFrom(bb.a(bb.a(0, (ParameterizedType) type)))) {
                        throw a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    return an.f4794a.a();
                }
                if (clsA8.isArray()) {
                    if (!d.aq.class.isAssignableFrom(clsA8.getComponentType())) {
                        throw a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    return an.f4794a.b();
                }
                if (d.aq.class.isAssignableFrom(clsA8)) {
                    return an.f4794a;
                }
                throw a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
            }
            d.ag agVarA = d.ag.a("Content-Disposition", "form-data; name=\"" + strA5 + "\"", MIME.CONTENT_TRANSFER_ENC, qVar.b());
            if (Iterable.class.isAssignableFrom(clsA8)) {
                if (!(type instanceof ParameterizedType)) {
                    throw a(i, clsA8.getSimpleName() + " must include generic type (e.g., " + clsA8.getSimpleName() + "<String>)", new Object[0]);
                }
                Type typeA4 = bb.a(0, (ParameterizedType) type);
                if (d.aq.class.isAssignableFrom(bb.a(typeA4))) {
                    throw a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new ah(agVarA, this.f4834a.a(typeA4, annotationArr, this.f4836c)).a();
            }
            if (clsA8.isArray()) {
                Class<?> clsA9 = az.a(clsA8.getComponentType());
                if (d.aq.class.isAssignableFrom(clsA9)) {
                    throw a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new ah(agVarA, this.f4834a.a(clsA9, annotationArr, this.f4836c)).b();
            }
            if (d.aq.class.isAssignableFrom(clsA8)) {
                throw a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
            }
            return new ah(agVarA, this.f4834a.a(type, annotationArr, this.f4836c));
        }
        if (annotation instanceof f.b.r) {
            if (!this.p) {
                throw a(i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            }
            this.h = true;
            Class<?> clsA10 = bb.a(type);
            if (!Map.class.isAssignableFrom(clsA10)) {
                throw a(i, "@PartMap parameter type must be Map.", new Object[0]);
            }
            Type typeB4 = bb.b(type, clsA10, Map.class);
            if (!(typeB4 instanceof ParameterizedType)) {
                throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
            }
            ParameterizedType parameterizedType4 = (ParameterizedType) typeB4;
            Type typeA5 = bb.a(0, parameterizedType4);
            if (String.class != typeA5) {
                throw a(i, "@PartMap keys must be of type String: " + typeA5, new Object[0]);
            }
            Type typeA6 = bb.a(1, parameterizedType4);
            if (d.aq.class.isAssignableFrom(bb.a(typeA6))) {
                throw a(i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
            }
            return new ai(this.f4834a.a(typeA6, annotationArr, this.f4836c), ((f.b.r) annotation).a());
        }
        if (annotation instanceof f.b.a) {
            if (this.o || this.p) {
                throw a(i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            }
            if (this.i) {
                throw a(i, "Multiple @Body method annotations found.", new Object[0]);
            }
            try {
                k<T, d.az> kVarA = this.f4834a.a(type, annotationArr, this.f4836c);
                this.i = true;
                return new ac(kVarA);
            } catch (RuntimeException e2) {
                throw a(e2, i, "Unable to create @Body converter for %s", type);
            }
        }
        return null;
    }

    private void a(int i, String str) {
        if (!az.f4827b.matcher(str).matches()) {
            throw a(i, "@Path parameter name must match %s. Found: %s", az.f4826a.pattern(), str);
        }
        if (!this.t.contains(str)) {
            throw a(i, "URL \"%s\" does not contain \"{%s}\".", this.q, str);
        }
    }

    private k<bf, T> c() {
        try {
            return this.f4834a.b(this.f4839f, this.f4835b.getAnnotations());
        } catch (RuntimeException e2) {
            throw a(e2, "Unable to create converter for %s", this.f4839f);
        }
    }

    private RuntimeException a(String str, Object... objArr) {
        return a((Throwable) null, str, objArr);
    }

    private RuntimeException a(Throwable th, String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.f4835b.getDeclaringClass().getSimpleName() + "." + this.f4835b.getName(), th);
    }

    private RuntimeException a(Throwable th, int i, String str, Object... objArr) {
        return a(th, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    private RuntimeException a(int i, String str, Object... objArr) {
        return a(str + " (parameter #" + (i + 1) + ")", objArr);
    }
}
