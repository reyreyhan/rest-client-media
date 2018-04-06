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
                                    <h4 class="title">Akun Table</h4>
                                    <p class="category">All Data Akun</p>
                                </div>
                                <div class="card-content table-responsive">
                                    <table id="tabel-data" class="table">
                                        <thead class="text-primary">
                                            <th>USER ID</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Password</th>
                                            <th>Akses</th>
                                            <th>Aksi</th>
                                        </thead>
                                        <tbody>
                                            @foreach($data as $u)
                                            <tr>
                                              <td>{{ $u->USER_ID }}</td>
                                              <td>{{ $u->USER_NAME }}</td>
                                              <td>{{ $u->USER_EMAIL }}</td>
                                              <td>{{ $u->USER_PASSWORD }}</td>
                                              <td>{{ $u->USER_PRIVILLEGES }}</td>
                                              <td>
                                                <a href="{{ route('akun.edit', $u->USER_ID) }}"><button class="btn btn-success">Edit</button></a>
                                                <form method="POST" action="http://api2.dev.ent.pens.ac.id/public/user/{{$u->USER_ID}}">
                                                  {{ csrf_field() }}
                                                  {{ method_field('DELETE') }}
                                                  <button class="btn btn-danger" type="submit">Delete</button>
                                                </form>
                                              </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
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
