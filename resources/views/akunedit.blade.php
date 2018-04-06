<!doctype html>
<html lang="en">

<head>
@include('include.head')
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="{!! asset('assets/img/sidebar-1.jpg')!!}">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo">
                <a href="" class="simple-text">
                    ENT
                </a>
            </div>
@include('include.side')
        </div>
        <div class="main-panel">
          <div class="content">
              <div class="container-fluid">
                  <div class="row">
                      <div class="col-md-12">
                          <div class="card">
                              <div class="card-header" data-background-color="purple">
                                  <h4 class="title">Update Akun Data</h4>
                                  <p class="category">Write Update Akun Data</p>
                              </div>
                              <div class="card-content">
                                  @foreach($data as $u)
                                  <form action="http://api2.dev.ent.pens.ac.id/public/kategori/{{$u->USER_ID}}" method="post">
                                    {{ csrf_field() }}
                                    {{ method_field('PUT') }}
                                      <div class="row">
                                          <div class="col-md-12">
                                              <div class="form-group label-floating">
                                                  <label class="control-label">Username</label>
                                                  <input name="USER_NAME" type="text" class="form-control" value="{{ $u->USER_NAME }}" required>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="row">
                                          <div class="col-md-6">
                                              <div class="form-group label-floating">
                                                  <label class="control-label">Email</label>
                                                  <input name="USER_EMAIL" value="{{$u->USER_EMAIL}}" type="text" class="form-control" required>
                                              </div>
                                          </div>
                                          <div class="col-md-6">
                                              <div class="form-group label-floating">
                                                  <label class="control-label">Password</label>
                                                  <input name="USER_PASSWORD" value="{{$u->USER_PASSWORD}}" type="password" class="form-control" required>
                                                  <input name="USER_DISPLAY" value="marc.jpg" type="hidden" class="form-control" required>
                                                  <input name="USER_PRIVILLEGES" value="{{$u->USER_PRIVILLEGES}}" type="hidden" class="form-control" required>
                                              </div>
                                          </div>
                                      </div>
                                      <button type="submit" class="btn btn-primary pull-right">Update</button>
                                      <div class="clearfix"></div>
                                  </form>
                                  @endforeach
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
    </div>
</body>

@include('include.footer')

</html>
